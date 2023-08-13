import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';

/// {@template route}
/// Model of routes stored in database.
/// {@endtemplate}
@freezed
class Route with _$Route {
  /// {@macro route}
  ///
  /// Factory constructor for [Route].
  factory Route({
    /// Name of the origin planet.
    ///
    /// Cannot be null or empty.
    required String origin,

    /// Name of the destination planet.
    ///
    /// Cannot be null or empty.
    required String destination,

    /// Number days needed to travel from one planet to the other.
    ///
    /// Must be strictly positive.
    required int travelTime,
  }) = _Route;
}
