import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 20.0),
      child: BsCard(
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
      ),
    );
  }

}