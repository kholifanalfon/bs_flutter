import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Widget of Horizontal Rule
class BsHorizontalRule extends StatelessWidget {
  /// Construct [BsHorizontalRule]
  const BsHorizontalRule({
    this.width = 0.2,
    this.color,
  });

  /// define width of [BsHorizontalRule]
  final double width;

  /// define color of [BsHorizontalRule]
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
          decoration: BoxDecoration(
              border: Border.all(
                  color: color == null ? BsColor.color : color!, width: width)),
        )),
      ],
    );
  }
}
