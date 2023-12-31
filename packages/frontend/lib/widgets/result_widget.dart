import 'package:flutter/material.dart';

/// {@template result_widget}
/// Widget to display the result of the odds computation.
/// {@endtemplate}
class ResultWidget extends StatelessWidget {
  final int odds;
  final VoidCallback onTapCompute;
  final VoidCallback onTapConfiguration;

  /// {@macro result_widget}
  ///
  /// Parameters:
  /// - [odds]: The odds of success as an int between 0 and 100.
  /// - [onTapCompute]: Callback when the user taps on the compute button.
  /// - [onTapConfiguration]: Callback when the user taps on the configuration
  /// button.
  const ResultWidget(
      {super.key,
      required this.odds,
      required this.onTapCompute,
      required this.onTapConfiguration});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween<double>(
            begin: 0.0,
            end: 1.0,
          ),
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 1000),
          builder: (context, value, _) => Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 64,
                height: 64,
                child: CircularProgressIndicator(
                  value: value * odds / 100,
                  strokeWidth: 4,
                ),
              ),
              Text(
                '${(value * odds).toStringAsFixed(0)}%',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: onTapConfiguration,
            ),
            const SizedBox(width: 16.0),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: onTapCompute,
            ),
          ],
        )
      ],
    );
  }
}
