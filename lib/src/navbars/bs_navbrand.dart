import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Class for customize [BsNavBrand]
class BsNavBrandStyle {

  /// Constructor [BsNavBrandStyle]
  const BsNavBrandStyle({
    this.padding,
  });

  /// defined padding of [BsNavBrand]
  final EdgeInsetsGeometry? padding;

  /// default example to customize [BsNavBrandStyle]
  static const BsNavBrandStyle style_1 = BsNavBrandStyle(
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 8.0, bottom: 8.0),
  );
}

/// This is on of [BsNavbar] child
class BsNavBrand extends StatelessWidget {

  /// Constructor [BsNavBrand]
  const BsNavBrand({
    Key? key,
    this.textStyle,
    this.brandStyle = BsNavBrandStyle.style_1,
    this.child,
    this.onPressed,
  }) : super(key: key);

  /// define customize [textStyle] of BsNavBrand
  final TextStyle? textStyle;

  /// define style of [BsNavBrand]
  final BsNavBrandStyle brandStyle;

  /// define child of [BsNavBrand]
  final Widget? child;

  /// define onPressed callback if needed
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: DefaultTextStyle(
        style: TextStyle(
          fontSize: 20.0,
        ).merge(textStyle),
        child: Container(
          padding: brandStyle.padding,
          child: child,
        )
      )
    );
  }

}