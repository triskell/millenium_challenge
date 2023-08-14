// ignore_for_file: file_names

import 'package:cli/cli.dart' as cli;

void main(List<String> arguments) async {
  final pathToDb = './examples/example1/universe.db';

  final odds = await cli.computeTheOdds(
    arguments[0],
    arguments[1],
    arguments.length > 2 ? arguments[2] : pathToDb,
  );

  print(odds);
}
