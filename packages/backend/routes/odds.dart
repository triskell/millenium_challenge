import 'dart:convert';
import 'dart:io';

import 'package:core_backend/core_backend.dart';
import 'package:dart_frog/dart_frog.dart';

import '../config.dart';

/// Handles the route to compute the odds.
///
/// Accepts POST requests with a JSON body containing the empire data.
///
/// Parameters:
/// - [context]: The request context.
///
/// Returns: A success [Response] containing the integer (0-100)
/// odds as a [String], or an error [Response].
Future<Response> onRequest(RequestContext context) async {
  final request = context.request;
  final method = request.method.value;

  switch (method) {
    case 'POST':
      return _handleGetRequest(request);
    default:
      return Response(statusCode: 501); // Not Implemented
  }
}

/// Handles the POST request to compute the odds.
///
/// Takes JSON body containing the empire data that maps to [Empire].
///
/// Parameters:
/// - [request]: The incoming request.
///
/// Returns: The response containing the integer (0-100) odds as a [String].
Future<Response> _handleGetRequest(Request request) async {
  final body = await request.body();
  final json = jsonDecode(body);

  final empire = Empire.fromJson(json as Map<String, dynamic>);

  final millenniumService = MillenniumJsonService();
  final routeService = RoutesDatabaseService(
    dbPath: Config.pathToDb,
  );

  final navigationService = NavigationService(
    routeService,
    millenniumService,
  );

  final theOdds = await navigationService.getTheOdds(
    millenniumJsonPath: Config.pathToMillenniumFalconJson,
    empire: empire,
  );

  routeService.dispose();

  final percentageOdds = (theOdds * 100).floor();

  return Response(body: percentageOdds.toString());
}
