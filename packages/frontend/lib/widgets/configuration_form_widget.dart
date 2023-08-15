import 'package:core_common/core_common.dart';
import 'package:flutter/material.dart';
import 'package:frontend/widgets/bounty_hunters_widget.dart';

/// {@template configuration_form_widget}
/// Widget to display the configuration form for the empire data.
/// {@endtemplate}
class ConfigurationFormWidget extends StatefulWidget {
  final Empire initialEmpire;
  final Function(Empire newEmpire) onSave;
  final VoidCallback onCancel;

  /// {@macro configuration_form_widget}
  ///
  /// Parameters:
  /// - [initialEmpire]: The initial [Empire] to display in the form.
  /// - [onSave]: Callback when the form is saved.
  /// - [onCancel]: Callback when the form is cancelled.
  const ConfigurationFormWidget({
    super.key,
    required this.initialEmpire,
    required this.onSave,
    required this.onCancel,
  });

  @override
  State<ConfigurationFormWidget> createState() =>
      _ConfigurationFormWidgetState();
}

class _ConfigurationFormWidgetState extends State<ConfigurationFormWidget> {
  late Empire _empire = widget.initialEmpire;

  @override
  Widget build(BuildContext context) {
    const minCountdown = 0.0;
    const maxCountdown = 20.0;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text("Countdown: ${_empire.countdown}"),
          Slider(
            value: _empire.countdown.toDouble(),
            onChanged: _updateCountdown,
            min: minCountdown,
            max: maxCountdown,
            divisions: (maxCountdown - minCountdown).floor(),
          ),
          const SizedBox(height: 16),
          const Text("Hunters"),
          BountyHuntersWidget(
            hunters: _empire.bountyHunters,
            onHuntersUpdated: _updateHunters,
          ),
          const SizedBox(height: 32),
          FilledButton(
            onPressed: () {
              widget.onSave(_empire);
            },
            child: const Text("Save"),
          ),
          const SizedBox(height: 16),
          FilledButton.tonal(
            onPressed: widget.onCancel,
            child: const Text("Cancel"),
          )
        ],
      ),
    );
  }

  void _updateCountdown(double countdown) {
    setState(() {
      _empire = _empire.copyWith(
        countdown: countdown.toInt(),
      );
    });
  }

  void _updateHunters(List<BountyHunter> hunters) {
    setState(() {
      _empire = _empire.copyWith(
        bountyHunters: hunters,
      );
    });
  }
}
