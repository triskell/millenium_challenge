import 'package:core_backend/core_backend.dart';
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
    navigationService = NavigationService(routeService, millenniumService);
  });

  tearDown(() {
    routeService.dispose();
  });

  test('Service get odds for example 1', () async {
    final empire = await empireService.read(
      '../../examples/example1/empire.json',
    );
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example1/millennium-falcon.json',
      empire: empire,
    );

    expect(odds, 0.0);
  });

  test('Service get odds for example 2', () async {
    final empire = await empireService.read(
      '../../examples/example2/empire.json',
    );
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example2/millennium-falcon.json',
      empire: empire,
    );

    expect(odds, 0.81);
  });

  test('Service get odds for example 3', () async {
    final empire = await empireService.read(
      '../../examples/example3/empire.json',
    );
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example3/millennium-falcon.json',
      empire: empire,
    );

    expect(odds, 0.9);
  });

  test('Service get odds for example 4', () async {
    final empire = await empireService.read(
      '../../examples/example4/empire.json',
    );
    final odds = await navigationService.getTheOdds(
      millenniumJsonPath: '../../examples/example4/millennium-falcon.json',
      empire: empire,
    );

    expect(odds, 1.0);
  });
}
