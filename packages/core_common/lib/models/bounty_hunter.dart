import 'package:freezed_annotation/freezed_annotation.dart';

part 'bounty_hunter.freezed.dart';
part 'bounty_hunter.g.dart';

/// {@template template_name}
/// Model for a bounty hunters position.
/// {@endtemplate}
@freezed
class BountyHunter with _$BountyHunter {
  /// {@macro template_name}
  const factory BountyHunter({
    /// Name of the planet.
    ///
    /// It cannot be null or empty.
    required String planet,

    /// Day the bounty hunters are on the planet.
    ///
    /// 0 represents the first day of the mission, i.e. today.
    required int day,
  }) = _BountyHunter;

  /// {@macro template_name}
  factory BountyHunter.fromJson(Map<String, dynamic> json) =>
      _$BountyHunterFromJson(json);
}
