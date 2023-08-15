import 'package:core_common/core_common.dart';
import 'package:flutter/material.dart';

import 'bounty_hunters_input_widget.dart';

/// {@template bounty_hunters_widget}
/// Widget to display the list of [BountyHunter]s and a creation input.
///
class BountyHuntersWidget extends StatelessWidget {
  final List<BountyHunter> _hunters;
  final Function(List<BountyHunter>) _onHuntersUpdated;

  /// {@macro bounty_hunters_widget}
  ///
  /// Parameters:
  /// - [hunters]: The list of [BountyHunter] to display.
  /// - [onHuntersUpdated]: Callback when the list of [BountyHunter] is updated.
  const BountyHuntersWidget({
    super.key,
    required List<BountyHunter> hunters,
    required Function(List<BountyHunter>) onHuntersUpdated,
  })  : _hunters = hunters,
        _onHuntersUpdated = onHuntersUpdated;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: _hunters.length,
          itemBuilder: (context, index) {
            final hunter = _hunters[index];
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child:
                            Text("On ${hunter.planet} at day ${hunter.day}")),
                    IconButton(
                      onPressed: () {
                        _onHunterRemoved(index);
                      },
                      icon: const Icon(Icons.cancel),
                    )
                  ],
                ),
              ),
            );
          },
        ),
        BountyHuntersInputWidget(
          onHunterAdded: _onHunterAdded,
        ),
      ],
    );
  }

  void _onHunterAdded(BountyHunter hunter) {
    _onHuntersUpdated([..._hunters, hunter]);
  }

  void _onHunterRemoved(int index) {
    _onHuntersUpdated([..._hunters]..removeAt(index));
  }
}
