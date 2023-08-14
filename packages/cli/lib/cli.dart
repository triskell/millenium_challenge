import 'package:core_backend/core_backend.dart';

Future<int> computeTheOdds(String pathToMillenniumFalconJson,
    String pathToEmpireJson, String pathToDb) async {
  final millenniumService = MillenniumJsonService();
  final empireService = EmpireJsonService();
  final routeService = RoutesDatabaseService(
    dbPath: pathToDb,
  );
  final navigationService = NavigationService(
    routeService,
    millenniumService,
    empireService,
  );

  final theOdds = await navigationService.getTheOdds(
    millenniumJsonPath: pathToMillenniumFalconJson,
    empireJsonPath: pathToEmpireJson,
  );

  routeService.dispose();

  return (theOdds * 100).floor();
}
