import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

/// Class style of [BsBadge]
class BsBadgeStyle {

  /// Constructor [BsBadgeStyle]
  const BsBadgeStyle({
    this.color,
    this.backgroundColor,
  });

  /// define color [BsBadge]
  final Color? color;

  /// define backgroundColor [BsBadge]
  final Color? backgroundColor;

  /// define primary badge
  static const BsBadgeStyle primary = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.primary,
  );

  /// define secondary badge
  static const BsBadgeStyle secondary = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.secondary,
  );

  /// define danger badge
  static const BsBadgeStyle danger = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.danger,
  );

  /// define success badge
  static const BsBadgeStyle success = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.success,
  );

  /// define warning badge
  static const BsBadgeStyle warning = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.warning,
  );

  /// define info badge
  static const BsBadgeStyle info = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.info,
  );

  /// define light badge
  static const BsBadgeStyle light = BsBadgeStyle(
    color: Colors.black,
    backgroundColor: BsColor.light,
  );

  /// define dark badge
  static const BsBadgeStyle dark = BsBadgeStyle(
    color: Colors.white,
    backgroundColor: BsColor.dark,
  );
}

/// Class for size of [BsBadge]
class BsBadgeSize {

  /// Constructor of [BsBadgeSize]
  const BsBadgeSize({
    this.padding,
    this.margin,
    this.fontSize,
    this.borderRadius,
  });

  /// define fontSize of [BsBadge]
  final double? fontSize;

  /// define padding of [BsBadge]
  final EdgeInsets? padding;

  /// define margin of [BsBadge]
  final EdgeInsets? margin;

  /// define borderRadius of [BsBadge]
  final BorderRadiusGeometry? borderRadius;

  /// define rounded badge
  static const BsBadgeSize rounded = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0),
      fontSize: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(100.0))
  );

  /// define small badge
  static const BsBadgeSize small = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 3.0, right: 3.0, top: 2.0, bottom: 2.0),
      fontSize: 9.0,
      borderRadius: BorderRadius.all(Radius.circular(50.0))
  );

  /// define medium badge
  static const BsBadgeSize medium = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
      fontSize: 10.0,
      borderRadius: BorderRadius.all(Radius.circular(50.0))
  );

  /// define large badge
  static const BsBadgeSize large = BsBadgeSize(
      margin: EdgeInsets.only(right: 5.0, bottom: 5.0),
      padding: EdgeInsets.only(left: 7.0, right: 7.0, top: 5.0, bottom: 5.0),
      fontSize: 14.0,
      borderRadius: BorderRadius.all(Radius.circular(50.0))
  );
}

/// Widget bootstrap badge
class BsBadge extends StatelessWidget {

  /// Constructor [BsBadge]
  const BsBadge({
    Key? key,
    this.style = BsBadgeStyle.secondary,
    this.size = BsBadgeSize.medium,
    this.child,
  }) : super(key: key);

  /// define style of [BsBadge]
  final BsBadgeStyle style;

  /// define size of [BsBadge]
  final BsBadgeSize size;

  /// define child [BsBadge]
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: size.padding,
      margin: size.margin,
      decoration: BoxDecoration(
        color: style.backgroundColor,
        borderRadius: size.borderRadius,
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: style.color,
          fontSize: size.fontSize,
        ),
        child: Container(
          child: child,
        ),
      ),
    );
  }

}