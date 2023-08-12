import 'package:core_backend/models/route.dart';
import 'package:core_backend/services/routes_database_service.dart';
import 'package:test/test.dart';

void main() {
  test('Service reads database file using relative path', () {
    var routes = RoutesDatabaseService.read(
      '../../examples/example1/universe.db',
    );

    /*
      Database contains the following routes:
      ```
        origin,destination,travel_time
        Tatooine,Dagobah,6
        Dagobah,Endor,4
        Dagobah,Hoth,1
        Hoth,Endor,1
        Tatooine,Hoth,6
      ```
    */

    expect(routes.length, 5);
    expect(
        routes[0],
        Route(
          origin: 'Tatooine',
          destination: 'Dagobah',
          travelTime: 6,
        ));
    expect(
        routes[1],
        Route(
          origin: 'Dagobah',
          destination: 'Endor',
          travelTime: 4,
        ));
    expect(
        routes[2],
        Route(
          origin: 'Dagobah',
          destination: 'Hoth',
          travelTime: 1,
        ));
    expect(
        routes[3],
        Route(
          origin: 'Hoth',
          destination: 'Endor',
          travelTime: 1,
        ));
    expect(
        routes[4],
        Route(
          origin: 'Tatooine',
          destination: 'Hoth',
          travelTime: 6,
        ));
  });

  test('Service reads database file using absolute path', () {
    var routes = RoutesDatabaseService.read(
      '/Users/thomas/workspace/millenium_challenge/examples/example1/universe.db',
    ); // WARNING: Please update your aboslute path when executing this test.

    /*
      Database contains the following routes:
      ```
        origin,destination,travel_time
        Tatooine,Dagobah,6
        Dagobah,Endor,4
        Dagobah,Hoth,1
        Hoth,Endor,1
        Tatooine,Hoth,6
      ```
    */

    expect(routes.length, 5);
    expect(
        routes[0],
        Route(
          origin: 'Tatooine',
          destination: 'Dagobah',
          travelTime: 6,
        ));
    expect(
        routes[1],
        Route(
          origin: 'Dagobah',
          destination: 'Endor',
          travelTime: 4,
        ));
    expect(
        routes[2],
        Route(
          origin: 'Dagobah',
          destination: 'Hoth',
          travelTime: 1,
        ));
    expect(
        routes[3],
        Route(
          origin: 'Hoth',
          destination: 'Endor',
          travelTime: 1,
        ));
    expect(
        routes[4],
        Route(
          origin: 'Tatooine',
          destination: 'Hoth',
          travelTime: 6,
        ));
  });
}
