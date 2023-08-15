# Millenium Challenge
_(I know, I forgot a 'n' in the project's name.)_

A fullstack Dart & Flutter implementation of [this challenge](https://github.com/lioncowlionant/developer-test).

- Frontend, backend and CLI are all Dart-based.
- Frontend is only tested on the Web target. But it would potentialy work on other native plateforms (maybe some config is needed).
- Melos is used to handle mono-repo architecture.

# How to use the project
## Setup project
You should first setup your project. Once it is done, you won' t have to do it again.

- [Install Flutter](https://docs.flutter.dev/get-started/install). It will install both Flutter and Dart commands (used later).
- _Optional, but useful:_ Check your Flutter installation with `flutter doctor`. Don't worry with Android and XCode warnings.
- Clone [this repository](https://github.com/triskell/millenium_challenge).
- In your terminal, move inside the project with `cd milenium-challenge`
- [Install Melos](https://melos.invertase.dev/getting-started) with `dart pub global activate melos`
- Bootstrap project with `melos bs`

It should have installed the CLI and built the frontend application.

## Run the application
- If not done yet, move to the root of the project.
- Start server and serve frontend `melos run serve`
- Once server started, open http://localhost:8080/index.html in your browser (may take a few seconds to load on first launch).


## Run the CLI
- Run the `give-me-the-odds <millennium-falcon-path> <empire-path>` or `give-me-the-odds <millennium-falcon-path> <empire-path> <universe-db-path>`. It can run from everywhere, as long as your JSON and DB paths are right.
- If you are in the root project folder, you can just run `give-me-the-odds examples/example1/millennium-falcon.json examples/example1/empire.json examples/example1/universe.db`

## Run the tests
- If not done yet, move to the root of the project.
- Just run `melos run test` and watch the result.


## Clean the project
- If not done yet, move to the root of the project.
- Run `melos clean`

It will clean the project and uninstall the `give-me-the-odds` command.


## Final notes
There are still some obvious improvements:
- Localisation (L10n)
- Better error handling
- More tests
- Redirecting http://localhost:8080/ to http://localhost:8080/index.html
- Ability to serve Frontend and API from an other port
- Adding documentation to CLI from a `--help` flag
- Use of a package like `riverpod` for the frontend application to manage state and dependencies injection.
- Multi-platform builds

But some basics are available:
- Tests on base functionalities
- Code documentation
- Project handling and scripting with Melos
- Mono-repo project with packages to manage dependencies