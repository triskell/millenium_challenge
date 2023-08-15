import 'package:flutter/material.dart';

/// {@template start_buttons_widget}
/// Widget to display the start buttons (Compute and Configure).
/// {@endtemplate}
class StartButtonsWidget extends StatelessWidget {
  final VoidCallback onTapCompute;
  final VoidCallback onTapConfiguration;

  /// {@macro start_buttons_widget}
  ///
  /// Parameters:
  /// - [onTapCompute]: Callback when the user taps on the compute button.
  /// - [onTapConfiguration]: Callback when the user taps on the configuration.
  const StartButtonsWidget({
    super.key,
    required this.onTapCompute,
    required this.onTapConfiguration,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FilledButton.icon(
          onPressed: onTapCompute,
          icon: const Icon(Icons.play_arrow),
          label: const Text("Give me the odds!"),
        ),
        const SizedBox(height: 16),
        FilledButton.tonalIcon(
          onPressed: onTapConfiguration,
          icon: const Icon(Icons.settings),
          label: const Text("Configure data"),
        ),
      ],
    );
  }
}
