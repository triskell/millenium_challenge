import 'package:flutter/material.dart';

/// {@template counter_widget}
/// Widget to display a counter with buttons to increment and decrement.
/// {@endtemplate}
class CounterWidget extends StatelessWidget {
  final int count, min, max;
  final Function(int newCount) onCountChanged;

  /// {@macro counter_widget}
  ///
  /// Parameters:
  /// - [count]: The initial count.
  /// - [min]: The minimum value for the count. Default is 0.
  /// - [max]: The maximum value for the count. Default is 100.
  /// - [onCountChanged]: Callback when the count is changed.
  const CounterWidget({
    super.key,
    required this.count,
    this.min = 0,
    this.max = 100,
    required this.onCountChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: count > min
              ? () {
                  onCountChanged(count - 1);
                }
              : null,
          icon: const Icon(Icons.remove_circle_outline),
        ),
        Text("$count"),
        IconButton(
          onPressed: count < max
              ? () {
                  onCountChanged(count + 1);
                }
              : null,
          icon: const Icon(Icons.add_circle_outline),
        ),
      ],
    );
  }
}
