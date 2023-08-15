import 'dart:io';

import 'package:dart_frog/dart_frog.dart';

/// Adds static serving to the web application build folder.
Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  const buildWebPath = '../../packages/frontend/build/web';
  final cascade =
      Cascade().add(createStaticFileHandler(path: buildWebPath)).add(handler);
  return serve(cascade.handler, ip, port);
}
