import 'dart:convert';

import '../models/millennium_falcon.dart';
import 'dart:io';

/// Service to read a `millennium-falcon.json` file.
final class MillenniumJsonService {
  /// Reads a `millennium-falcon.json` file.
  ///
  /// Parameters:
  /// - [path] String containing the path to the JSON file. The path can be either absolute
  ///  or relative.
  ///
  /// Returns: [MillenniumFalcon] object stored in JSON file.
  static Future<MillenniumFalcon> read(String path) async {
    var content = await File(path).readAsString();
    var json = jsonDecode(content);
    return MillenniumFalcon.fromJson(json);
  }
}
