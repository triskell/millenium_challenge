import 'dart:convert';

import '../models/empire.dart';
import 'dart:io';

/// Service to read a `empire.json` file.
final class EmpireJsonService {
  /// Reads a `empire.json` file.
  ///
  /// Parameters:
  /// - [path] String containing the path to the JSON file. The path can be
  /// either absolute or relative.
  ///
  /// Returns: [Empire] object stored in JSON file.
  Future<Empire> read(String path) async {
    var content = await File(path).readAsString();
    var json = jsonDecode(content);
    return Empire.fromJson(json);
  }
}
