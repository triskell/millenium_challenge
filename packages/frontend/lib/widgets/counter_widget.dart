import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final int count, min, max;
  final Function(int newCount) onCountChanged;

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
