import 'package:core_common/models/bounty_hunter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'empire.freezed.dart';
part 'empire.g.dart';

/// {@template empire}
/// Model for the empire's input data JSON file.
/// {@endtemplate}
@freezed
class Empire with _$Empire {
  /// {@macro empire}
  const factory Empire({
    /// Number of days before the Death Star annihilates Endor.
    required int countdown,

    /// List of all locations where Bounty Hunter are scheduled to be present.
    @JsonKey(name: 'bounty_hunters') required List<BountyHunter> bountyHunters,
  }) = _Empire;

  /// {@macro empire}
  factory Empire.fromJson(Map<String, dynamic> json) => _$EmpireFromJson(json);
}
