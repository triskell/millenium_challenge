import 'dart:math';

import 'package:core_backend/core_backend.dart';
import 'package:core_backend/models/millennium_falcon.dart';
import 'package:core_common/core_common.dart';

import '../models/travel_state.dart';

/// {@template navigation_service}
/// Service to handle navigation algorithm.
/// {@endtemplate}
final class NavigationService {
  final RoutesDatabaseService _routesDatabaseService;
  final MillenniumJsonService _millenniumJsonService;
  final EmpireJsonService _empireJsonService;

  /// {@macro navigation_service}
  NavigationService(
    this._routesDatabaseService,
    this._millenniumJsonService,
    this._empireJsonService,
  );

  /// Get the probability of a bounty hunter being captured.
  ///
  /// Parameters:
  /// - [days]: Number of days spent on planets with bounty hunters.
  ///
  /// Returns: The probability to be captured.
  static double _getProbabilityToBeCaptured({required int days}) {
    assert(days >= 0);
    if (days == 0) {
      return 0.0;
    } else {
      var ratio = pow(9, (days - 1)) / pow(10, (days));
      return _getProbabilityToBeCaptured(days: days - 1) + ratio;
    }
  }

  /// Get the probability of a success.
  ///
  /// Parameters:
  /// - [days]: Number of days spent on planets with bounty hunters.
  ///
  /// Returns: The probability of success.
  static double getProbabilityOfSuccess({required int days}) {
    assert(days >= 0);
    return 1 - _getProbabilityToBeCaptured(days: days);
  }

  /// Get the odds of success of the Millennium Falcon.
  ///
  /// Parameters:
  /// - [millenniumJsonPath]: Path to the JSON file containing the Millennium Falcon data.
  /// - [empireJsonPath]: Path to the JSON file containing the Empire data.
  ///
  /// Returns: The odds of success.
  Future<double> getTheOdds({
    required String millenniumJsonPath,
    required String empireJsonPath,
  }) async {
    final millenniumFalcon =
        await _millenniumJsonService.read(millenniumJsonPath);
    final empire = await _empireJsonService.read(empireJsonPath);
    final bountyHunterDays =
        _makeTravels(millenniumFalcon: millenniumFalcon, empire: empire)
            .map((travel) => travel.daysOnPlanetWithBountyHunters);

    if (bountyHunterDays.isEmpty) {
      return 0.0;
    }

    final minimumDasys = bountyHunterDays.reduce(min);

    return getProbabilityOfSuccess(days: minimumDasys);
  }

  /// Get the list of [TravelState] that reached the destination.
  ///
  /// Parameters:
  /// - [millenniumFalcon]: The Millennium Falcon model.
  /// - [empire]: The Empire model.
  ///
  /// Returns: The list of [TravelState] that reached the destination.
  List<TravelState> _makeTravels({
    required MillenniumFalcon millenniumFalcon,
    required Empire empire,
  }) {
    var travelStates = [
      _getInitialState(
        millenniumFalcon: millenniumFalcon,
        empire: empire,
      ),
    ];
    final reachedDestinationStates = <TravelState>[];

    while (travelStates.isNotEmpty) {
      travelStates = _computeNextStates(
        currentStates: travelStates,
        bountyHuntersPositions: empire.bountyHunters,
        initialCountdown: empire.countdown,
      );

      // Triage reached destination states and states that still need to travel.
      final newReachedDestinationStates = travelStates.where(
        (state) => state.position == state.destination,
      );
      if (newReachedDestinationStates.isNotEmpty) {
        reachedDestinationStates.addAll(newReachedDestinationStates);
        travelStates.removeWhere(
          (state) => state.position == state.destination,
        );
      }
    }

    return reachedDestinationStates;
  }

  /// Get the initial [TravelState] of the Travel Graph.
  ///
  /// Parameters:
  /// - [millenniumFalcon]: The Millennium Falcon model.
  /// - [empire]: The Empire model.
  ///
  /// Returns: The initial [TravelState].
  TravelState _getInitialState({
    required MillenniumFalcon millenniumFalcon,
    required Empire empire,
  }) {
    return TravelState(
      position: millenniumFalcon.departure,
      destination: millenniumFalcon.arrival,
      travelDays: 0,
      daysOnPlanetWithBountyHunters: 0,
      autonomyCapacity: millenniumFalcon.autonomy,
      remainingAutonomy: millenniumFalcon.autonomy,
    );
  }

  /// Get next step of travel states.
  ///
  /// Parameters:
  /// - [currentStates]: The current [TravelState].
  /// - [bountyHuntersPositions]: All the positions of the bounty hunters.
  /// - [originalCountdown]: The initial countdown.
  ///
  /// Returns: The next step list of [TravelState].
  List<TravelState> _computeNextStates({
    required List<TravelState> currentStates,
    required List<BountyHunter> bountyHuntersPositions,
    required int initialCountdown,
  }) {
    final nextStates = <TravelState>[];

    for (var currentState in currentStates) {
      final countdown = initialCountdown - currentState.travelDays;
      final directRoutes = _routesDatabaseService.getDirectReachableNeighbours(
        origin: currentState.position,
        autonomy: currentState.remainingAutonomy,
        countdown: countdown,
      );

      final routesWithRefuel = _routesDatabaseService
          .getReachableNeighboursWithRefuel(
            origin: currentState.position,
            autonomy: currentState.remainingAutonomy,
            capacity: currentState.autonomyCapacity,
            countdown: countdown - 1,
          )
          .toList();

      nextStates.addAll(
        _getNextStatesFromRoutes(
          currentState: currentState,
          directRoutes: directRoutes,
          routesWithRefuel: routesWithRefuel,
          bountyHuntersPositions: bountyHuntersPositions,
        ),
      );
    }

    return nextStates;
  }

  /// Get next node from [Route].
  ///
  /// Parameters:
  /// - [currentState]: The current [TravelState].
  /// - [directRoutes]: The routes without refuel.
  /// - [routesWithRefuel]: The routes with refuel.
  /// - [bountyHuntersPositions]: All the positions of the bounty hunters.
  ///
  /// Returns: The list of [TravelState] generated from the current state.
  List<TravelState> _getNextStatesFromRoutes({
    required TravelState currentState,
    required List<Route> directRoutes,
    required List<Route> routesWithRefuel,
    required List<BountyHunter> bountyHuntersPositions,
  }) {
    List<TravelState> nextStates = [];
    final bountyHuntersAtPosition = bountyHuntersPositions
        .where((bountyHunter) => bountyHunter.planet == currentState.position);
    final bountyHuntersAtPositionToday = bountyHuntersAtPosition
        .where((bountyHunter) => bountyHunter.day == currentState.travelDays)
        .length;
    final bountyHuntersAtPositionTomorrow = bountyHuntersAtPosition
        .where(
          (bountyHunter) => bountyHunter.day == currentState.travelDays + 1,
        )
        .length;

    // Compute next states for direct routes
    for (var route in directRoutes) {
      nextStates.add(
        currentState.copyWith(
          position: route.destination,
          travelDays: currentState.travelDays + route.travelTime,
          daysOnPlanetWithBountyHunters:
              currentState.daysOnPlanetWithBountyHunters +
                  bountyHuntersAtPositionToday,
          remainingAutonomy: currentState.remainingAutonomy - route.travelTime,
        ),
      );
    }

    // Compute next states for routes with one day of refuel and then travel to destination.
    for (var route in routesWithRefuel) {
      final refuelDayState = currentState.copyWith(
        position: route.origin,
        travelDays: currentState.travelDays + 1,
        daysOnPlanetWithBountyHunters:
            currentState.daysOnPlanetWithBountyHunters +
                bountyHuntersAtPositionTomorrow,
        remainingAutonomy: currentState.autonomyCapacity,
      );
      final nextState = refuelDayState.copyWith(
        position: route.destination,
        travelDays: refuelDayState.travelDays + route.travelTime,
        daysOnPlanetWithBountyHunters:
            refuelDayState.daysOnPlanetWithBountyHunters +
                bountyHuntersAtPositionToday,
        remainingAutonomy: refuelDayState.remainingAutonomy - route.travelTime,
      );
      nextStates.add(nextState);
    }

    return nextStates;
  }
}
