import 'package:freezed_annotation/freezed_annotation.dart';
import 'route.dart';

part 'travel_state.freezed.dart';

/// {@template travel_state}
/// A node in the graph of possible paths.
/// {@endtemplate}
@freezed
class TravelState with _$TravelState {
  /// {@macro travel_state}
  const factory TravelState({
    /// Name of the current planet the ship is at.
    required String position,

    /// Destination planet of the travel.
    ///
    /// Should not change during the travel.
    required String destination,

    /// Days spent to travel to this planet.
    required int travelDays,

    /// Days spent on this planet with bounty hunters.
    required int daysOnPlanetWithBountyHunters,

    /// Maximum capcity autonomy of the Millennium Falcon in days.
    ///
    /// Value used to restore the maximum [remainingAutonomy] when the ship
    /// refuels.
    /// Should not change during the travel.
    required int autonomyCapacity,

    /// Remaining autonomy of the Millennium Falcon in days.
    required int remainingAutonomy,
  }) = _TravelState;
}
