import 'package:core_backend/core_backend.dart';
import 'package:core_backend/services/navigation_service.dart';
import 'package:core_common/core_common.dart';
import 'package:test/test.dart';

void main() {
  late NavigationService navigationService;
  late RoutesDatabaseService routeService;
  final millenniumService = MillenniumJsonService();
  final empireService = EmpireJsonService();

  setUp(() {
    routeService = RoutesDatabaseService(
      dbPath: '../../examples/example1/universe.db',
    );
    navigationService = NavigationService(
      routeService,
      millenniumService,
      empireService,
    );
  });

  tearDown(() {
    routeService.dispose();
  });

  test('Service get odds for example 1', () async {
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example1/millennium-falcon.json',
      empireJsonPath: '../../examples/example1/empire.json',
    );

    expect(odds, 0.0);
  });

  test('Service get odds for example 2', () async {
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example2/millennium-falcon.json',
      empireJsonPath: '../../examples/example2/empire.json',
    );

    expect(odds, 0.81);
  });

  test('Service get odds for example 3', () async {
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example3/millennium-falcon.json',
      empireJsonPath: '../../examples/example3/empire.json',
    );

    expect(odds, 0.9);
  });

  test('Service get odds for example 4', () async {
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example4/millennium-falcon.json',
      empireJsonPath: '../../examples/example4/empire.json',
    );

    expect(odds, 1.0);
  });
}
