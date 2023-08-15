import 'package:core_common/core_common.dart';

import '../datasources/odds_api.dart';

class OddsRepository {
  final OddsApi _api;

  OddsRepository({required OddsApi api}) : _api = api;

  Future<int> getOdds(Empire empire) async {
    return _api.getOdds(empire);
  }
}
