import 'package:core_common/core_common.dart';
import 'package:dio/dio.dart';

/// {@template odds_api}
/// Rest API to access Odds data.
/// {@endtemplate}
class OddsApi {
  static const _baseUrl = 'http://localhost:8080';

  final Dio _client;

  /// {@macro odds_api}
  ///
  /// Parameters:
  /// - [client]: Injection of [Dio] instance.
  OddsApi({required Dio client}) : _client = client;

  /// Get the odds of success for the given [Empire].
  ///
  /// Parameters:
  /// - [empire]: The [Empire] to compute the odds for.
  ///
  /// Returns: The odds of success as an [int] (0-100).
  Future<int> getOdds(Empire empire) async {
    final response = await _client.post(
      '$_baseUrl/odds',
      data: empire.toJson(),
    );
    final odds = response.data as String;
    return int.parse(odds);
  }
}
