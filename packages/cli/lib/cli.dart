import 'package:core_backend/core_backend.dart';

Future<int> computeTheOdds(String pathToMillenniumFalconJson,
    String pathToEmpireJson, String pathToDb) async {
  final millenniumService = MillenniumJsonService();
  final empireService = EmpireJsonService();
  final routeService = RoutesDatabaseService(
    dbPath: pathToDb,
  );
  final navigationService = NavigationService(routeService, millenniumService);

  final empire = await empireService.read(
    pathToEmpireJson,
  );

  final theOdds = await navigationService.getTheOdds(
    millenniumJsonPath: pathToMillenniumFalconJson,
    empire: empire,
  );

  routeService.dispose();

  return (theOdds * 100).floor();
}
