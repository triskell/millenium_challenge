import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

import 'config.dart';

/// Adds static serving to the web application build folder.
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  final cascade = Cascade()
      .add(createStaticFileHandler(path: Config.buildWebPath))
      .add(handler);
  return serve(cascade.handler, ip, port);
}
