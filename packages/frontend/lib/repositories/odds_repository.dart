import 'package:core_common/core_common.dart';

import '../datasources/odds_api.dart';

/// {@template odds_repository}
/// Repository to access Odds data.
/// {@endtemplate}
class OddsRepository {
  final OddsApi _api;

  /// {@macro odds_repository}
  ///
  /// Parameters:
  /// - [api]: Injection of [OddsApi] instance.
  OddsRepository({required OddsApi api}) : _api = api;

  /// Get the odds of success for the given [Empire].
  ///
  /// Parameters:
  /// - [empire]: The [Empire] to compute the odds for.
  ///
  /// Returns: The odds of success as an [int] (0-100).
  Future<int> getOdds(Empire empire) async {
    return _api.getOdds(empire);
  }
}
