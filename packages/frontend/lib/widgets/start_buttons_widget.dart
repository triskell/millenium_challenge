import 'package:flutter/material.dart';

class StartButtonsWidget extends StatelessWidget {
  final VoidCallback onTapCompute;
  final VoidCallback onTapConfiguration;

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
