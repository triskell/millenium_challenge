import 'package:core_common/core_common.dart';
import 'package:flutter/material.dart';
import 'package:frontend/widgets/counter_widget.dart';

class BountyHuntersInputWidget extends StatefulWidget {
  final Function(BountyHunter) onHunterAdded;

  const BountyHuntersInputWidget({
    super.key,
    required this.onHunterAdded,
  });

  @override
  State<BountyHuntersInputWidget> createState() =>
      _BountyHuntersInputWidgetState();
}

class _BountyHuntersInputWidgetState extends State<BountyHuntersInputWidget> {
  BountyHunter _bountyHunter = const BountyHunter(planet: '', day: 0);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Text("On"),
            const SizedBox(width: 8.0),
            Expanded(
              child: TextField(
                onChanged: _onPlanetChanged,
                decoration: const InputDecoration(
                  hintText: 'Planet name',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
            const Text("at day"),
            const SizedBox(width: 8.0),
            CounterWidget(
              count: _bountyHunter.day,
              onCountChanged: _onDayChanged,
              min: 0,
              max: 20,
            ),
            const SizedBox(width: 8.0),
            IconButton(
              onPressed: _bountyHunter.planet.isNotEmpty
                  ? () {
                      widget.onHunterAdded(_bountyHunter);
                    }
                  : null,
              icon: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }

  void _onDayChanged(int day) {
    setState(() {
      _bountyHunter = _bountyHunter.copyWith(day: day);
    });
  }

  void _onPlanetChanged(String planet) {
    setState(() {
      _bountyHunter = _bountyHunter.copyWith(planet: planet);
    });
  }
}
