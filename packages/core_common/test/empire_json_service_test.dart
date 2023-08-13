import 'package:core_common/core_common.dart';
import 'package:test/test.dart';

void main() {
  final EmpireJsonService service = EmpireJsonService();

  test('Service reads JSON file using relative path', () async {
    var empire = await service.read(
      '../../examples/example1/empire.json',
    );

    expect(
      empire,
      Empire(
        countdown: 7,
        bountyHunters: [
          BountyHunter(planet: 'Hoth', day: 6),
          BountyHunter(planet: 'Hoth', day: 7),
          BountyHunter(planet: 'Hoth', day: 8),
        ],
      ),
    );
  });

  test('Service reads JSON file using absolute path', () async {
    var empire = await service.read(
      '/Users/thomas/workspace/millenium_challenge/examples/example1/empire.json',
    ); // WARNING: Please update your aboslute path when executing this test.

    expect(
      empire,
      Empire(
        countdown: 7,
        bountyHunters: [
          BountyHunter(planet: 'Hoth', day: 6),
          BountyHunter(planet: 'Hoth', day: 7),
          BountyHunter(planet: 'Hoth', day: 8),
        ],
      ),
    );
  });
}
