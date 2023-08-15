import 'package:core_common/core_common.dart';
import 'package:dio/dio.dart';

class OddsApi {
  static const baseUrl = 'http://localhost:8080';

  final Dio client;

  OddsApi({required this.client});

  Future<int> getOdds(Empire empire) async {
    final response = await client.post(
      '$baseUrl/odds',
      data: empire.toJson(),
    );
    final odds = response.data as String;
    return int.parse(odds);
  }
}
