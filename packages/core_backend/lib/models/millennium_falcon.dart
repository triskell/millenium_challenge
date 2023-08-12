import 'package:freezed_annotation/freezed_annotation.dart';

part 'millennium_falcon.freezed.dart';
part 'millennium_falcon.g.dart';

/// {@template template_name}
/// Model for the backend's input data JSON file.
///
/// File should be represented as:
/// ```json
/// {
///   "autonomy": 6,
///   "departure": "Tatooine",
///   "arrival": "Endor",
///   "routes_db": "universe.db"
/// }
/// ```
/// {@endtemplate}
@freezed
class MillenniumFalcon with _$MillenniumFalcon {
  /// {@macro template_name}
  ///
  /// Factory constructor for [MillenniumFalcon].
  factory MillenniumFalcon({
    /// Autonomy of the Millennium Falcon in days.
    required int autonomy,

    /// Planet where the Millennium Falcon is on day 0.
    required String departure,

    /// Planet where the Millennium Falcon must be at or before countdown.
    required String arrival,

    /// Path toward a SQLite database file containing the routes.
    ///
    /// The path can be either absolute or relative to the location of the
    /// `millennium-falcon.json` file itself.
    @JsonKey(name: 'routes_db') required String routesDb,
  }) = _MillenniumFalcon;

  /// {@macro template_name}
  ///
  /// Creates a [MillenniumFalcon] from a JSON object.
  factory MillenniumFalcon.fromJson(Map<String, dynamic> json) =>
      _$MillenniumFalconFromJson(json);
}
