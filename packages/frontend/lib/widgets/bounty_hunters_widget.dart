import 'package:core_common/core_common.dart';
import 'package:flutter/material.dart';

import 'new_bounty_hunters_input_widget.dart';

class BountyHuntersWidget extends StatelessWidget {
  final List<BountyHunter> hunters;
  final Function(List<BountyHunter>) onHuntersUpdated;

  const BountyHuntersWidget({
    super.key,
    required this.hunters,
    required this.onHuntersUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: hunters.length,
          itemBuilder: (context, index) {
            final hunter = hunters[index];
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
    onHuntersUpdated([...hunters, hunter]);
  }

  void _onHunterRemoved(int index) {
    onHuntersUpdated([...hunters]..removeAt(index));
  }
}
