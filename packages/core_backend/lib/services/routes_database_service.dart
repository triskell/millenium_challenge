import '../models/route.dart';
import 'package:sqlite3/sqlite3.dart';

/// {@template routes_database_service}
/// Service to read [Route]s from database.
/// {@endtemplate}
final class RoutesDatabaseService {
  final Database _database;

  /// {@macro routes_database_service}
  ///
  /// Parameters:
  /// - [path] String containing the path to the SQLite database file. The path
  /// can be either absolute or relative.
  RoutesDatabaseService({required String dbPath})
      : _database = sqlite3.open(dbPath);

  /// Dispose service and close database connection.
  void dispose() {
    _database.dispose();
  }

  /// Get all [Route]s from database.
  ///
  /// Parameters:
  /// - [path] String containing the path to the SQLite database file. The path
  /// can be either absolute or relative.
  ///
  /// Returns: List of [Route]s stored in database.
  List<Route> getAll() {
    return _query('''
      SELECT origin, destination, travel_time
      FROM routes
    ''');
  }

  /// Get all neighbours [Route]s from given position.
  ///
  /// Parameters:
  /// - [path] String : Name of the origin planet of the routes to find.
  ///
  /// Returns: List of [Route]s stored in database.
  List<Route> getAllNeighbours(String origin) {
    return _query('''
      SELECT origin, destination, travel_time
      FROM routes
      WHERE origin = '$origin'
    ''');
  }

  /// Get neighbours [Route]s reachable from given position without a refuel.
  ///
  /// Parameters:
  /// - [path] String : Name of the origin planet of the routes to find.
  /// - [autonomy] int : Remaining autonomy of the ship in days.
  /// - [countdown] int : Number of days remaining before the mission is failed.
  ///
  /// Returns: List of [Route]s reachable from given position without a refuel.
  List<Route> getDirectReachableNeighbours({
    required String origin,
    required int autonomy,
    required int countdown,
  }) {
    return _query('''
      SELECT origin, destination, travel_time
      FROM routes
      WHERE origin = '$origin'
      AND travel_time <= $autonomy
      AND travel_time <= $countdown
    ''');
  }

  /// Get neighbours [Route]s reachable from given position with a refuel.
  ///
  /// Parameters:
  /// - [path] String : Name of the origin planet of the routes to find.
  /// - [autonomy] int : Remaining autonomy of the ship in days before refuel.
  /// - [capacity] int : Maximum autonomy of the ship in days after refuel.
  /// - [countdown] int : Number of days remaining before the mission is failed.
  ///
  /// Returns: List of [Route]s reachable from given position with a refuel.
  List<Route> getReachableNeighboursWithRefuel({
    required String origin,
    required int autonomy,
    required int capacity,
    required int countdown,
  }) {
    return _query('''
      SELECT origin, destination, travel_time
      FROM routes
      WHERE origin = '$origin'
      AND travel_time <= $capacity
      AND travel_time <= $countdown
    ''');
  }

  /// Execute a SQL query on the database and get the result as a list [Route].
  ///
  /// Parameters:
  /// - [sqlQuery] String containing the SQL query to execute.
  ///
  /// Returns: List of [Route]s returned by the query in database.
  List<Route> _query(String sqlQuery) {
    var routes = _database.select(sqlQuery).map((row) {
      return Route(
        origin: row['origin'] as String,
        destination: row['destination'] as String,
        travelTime: row['travel_time'] as int,
      );
    }).toList();

    return routes;
  }
}
