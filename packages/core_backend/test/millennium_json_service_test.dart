import 'package:core_backend/models/millennium_falcon.dart';
import 'package:core_backend/services/millennium_json_service.dart';
import 'package:test/test.dart';

void main() {
  test('Service reads JSON file using relative path', () async {
    var milleniumFalcon = await MillenniumJsonService.read(
      '../../examples/example1/millennium-falcon.json',
    );

    expect(
      milleniumFalcon,
      MillenniumFalcon(
        autonomy: 6,
        departure: 'Tatooine',
        arrival: 'Endor',
        routesDb: 'universe.db',
      ),
    );
  });

  test('Service reads JSON file using absolute path', () async {
    var millenniumFalcon = await MillenniumJsonService.read(
      '/Users/thomas/workspace/millenium_challenge/examples/example1/millennium-falcon.json',
    ); // WARNING: Please update your aboslute path when executing this test.

    expect(
      millenniumFalcon,
      MillenniumFalcon(
        autonomy: 6,
        departure: 'Tatooine',
        arrival: 'Endor',
        routesDb: 'universe.db',
      ),
    );
  });
}
