import '../models/route.dart';
import 'package:sqlite3/sqlite3.dart';

/// Service to read [Route]s from database.
final class RoutesDatabaseService {
  /// Reads [Route]s from database.
  ///
  /// Parameters:
  /// - [path] String containing the path to the SQLite database file. The path
  /// can be either absolute or relative.
  ///
  /// Returns: List of [Route]s stored in database.
  static List<Route> read(String path) {
    var database = sqlite3.open(path);

    var routes = database.select('''
      SELECT origin, destination, travel_time
      FROM routes
    ''').map((row) {
      return Route(
        origin: row['origin'] as String,
        destination: row['destination'] as String,
        travelTime: row['travel_time'] as int,
      );
    }).toList();

    database.dispose();

    return routes;
  }
}
