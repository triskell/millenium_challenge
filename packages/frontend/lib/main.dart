import 'package:flutter/material.dart';
import 'package:frontend/widgets/odds_screen.dart';

/// Flutter app entrypoint.
void main() {
  runApp(const OddsApp());
}

/// {@template odds_app}
/// The main application widget.
/// {@endtemplate}
class OddsApp extends StatelessWidget {
  const OddsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Give Me The Odds',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 86, 215, 147),
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: OddsScreen(),
    );
  }
}
