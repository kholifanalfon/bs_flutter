import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BsFormGroup extends StatelessWidget {

  const BsFormGroup({
    Key? key,
    this.label,
    this.child,
    this.textStyle,
    this.margin = const EdgeInsets.only(bottom: 10.0),
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final EdgeInsetsGeometry margin;

  final Widget? label;

  final TextStyle? textStyle;

  final Widget? child;

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          DefaultTextStyle(
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontSize: 12.0,
              fontWeight: FontWeight.bold
            ).merge(textStyle),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: label
            ),
          ),
          Container(child: child)
        ],
      ),
    );
  }

}