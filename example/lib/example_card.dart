import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleCard extends StatelessWidget {

  BsSelectBoxController _select2 = BsSelectBoxController(multiple: true, options: [
    BsSelectBoxOption(value: 1, text: Text('1')),
    BsSelectBoxOption(value: 2, text: Text('2')),
    BsSelectBoxOption(value: 3, text: Text('3')),
    BsSelectBoxOption(value: 4, text: Text('4')),
    BsSelectBoxOption(value: 5, text: Text('5')),
    BsSelectBoxOption(value: 6, text: Text('6')),
  ]);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 20.0),
      child: BsCard(
        children: [
          BsCardContainer(title: Text('Box Card')),
          BsCardContainer(child: Container(
            child: Column(
              children: [
                BsFormGroup(
                  label: Text('Name'),
                  child: BsSelectBox(
                    searchable: true,
                    hintText: 'Pilih salah satu',
                    selectBoxController: _select2,
                  ),
                )
              ],
            ),
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