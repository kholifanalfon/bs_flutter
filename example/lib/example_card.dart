import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BsCard(
      children: [
        BsCardContainer(title: Text('Box Card')),
        BsCardContainer(child: Container(
          child: Text('Box Card Content'),
        )),
        BsCardContainer(actions: [
          BsButton(
            onPressed: () {},
            style: BsButtonStyle.primary,
            prefixIcon: Icons.block,
            label: Text('Primary'),
          )
        ])
      ],
    );
  }

}