import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

export 'bs_navbrand.dart';

/// Class for customize style [BsNavbar]
class BsNavbarStyle {
  /// If [backgroundColor] isEmpty, system will set automatically backgroundColor to default
  const BsNavbarStyle({
    this.borderRadius,
    this.backgroundColor = const Color(0xffe7e7e7),
  });

  /// Set background color of [BsNavbar]
  final Color? backgroundColor;

  /// Set border radius of [BsNavbar]
  final BorderRadiusGeometry? borderRadius;

  /// This is default example for customize [BsNavbar]
  static const BsNavbarStyle style_1 = BsNavbarStyle(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
}

/// Class for customize size of [BsNavbar]
class BsNavbarSize {
  /// Constructor of [BsNavbarSize]
  const BsNavbarSize({
    this.padding,
  });

  /// Set padding of [BsNavBar]
  final EdgeInsetsGeometry? padding;

  /// This is default example [BsNavbarSize] with name medium size
  static const BsNavbarSize md =
      BsNavbarSize(padding: EdgeInsets.only(top: 10.0, bottom: 10.0));
}

/// Create beautifull navigation bar using [BsNavbar]
///
/// To customize style [BsNavbar] using [BsNavbarStyle] or [BsNavbarSize] to
/// customize size of [BsNavbar]
class BsNavbar extends StatelessWidget {
  /// If [style] isEmpty, system will automatically set style to [BsNavbarStyle.style_1]
  /// If [size] isEmpty, system will automatically set style to [BsNavbarSize.md]
  const BsNavbar({
    Key? key,
    this.style = BsNavbarStyle.style_1,
    this.size = BsNavbarSize.md,
    this.brand,
    this.margin,
    this.child,
  }) : super(key: key);

  /// define customize style of [BsNavbar]
  final BsNavbarStyle style;

  /// define customize size of [BsNavbar]
  final BsNavbarSize size;

  /// define margin of [BsNavbar]
  final EdgeInsetsGeometry? margin;

  /// define brand section of [BsNavbar] use [BsNavBrand] class
  final BsNavBrand? brand;

  /// define child of [BsNavbar]
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: size.padding,
      decoration: BoxDecoration(
          color: style.backgroundColor, borderRadius: style.borderRadius),
      child: Row(
        children: [
          brand == null ? Container(width: 0) : Container(child: brand),
          Expanded(child: Container(child: child)),
        ],
      ),
    );
  }
}
