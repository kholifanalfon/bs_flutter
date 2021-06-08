import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';

/// Class to set color of [BsAlert]
class BsAlertColor {

  /// Construct [BsAlertColor]
  const BsAlertColor({
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
  });

  /// define color of [BsAlert]
  final Color color;

  /// define backgroundColor of [BsAlert]
  final Color backgroundColor;

  /// define borderColor of [BsAlert]
  final Color borderColor;

  /// define alert color primary
  static const BsAlertColor primary = BsAlertColor(
    color: Color(0xff084298),
    backgroundColor: Color(0xffcfe2ff),
    borderColor: Color(0xffb6d4fe),
  );

  /// define alert color secondary
  static const BsAlertColor secondary = BsAlertColor(
    color: Color(0xff41464b),
    backgroundColor: Color(0xffe2e3e5),
    borderColor: Color(0xffd3d6d8),
  );

  /// define alert color success
  static const BsAlertColor success = BsAlertColor(
    color: Color(0xff0f5132),
    backgroundColor: Color(0xffd1e7dd),
    borderColor: Color(0xffbadbcc),
  );

  /// define alert color danger
  static const BsAlertColor danger = BsAlertColor(
    color: Color(0xff842029),
    backgroundColor: Color(0xfff8d7da),
    borderColor: Color(0xfff5c2c7),
  );

  /// define alert color warning
  static const BsAlertColor warning = BsAlertColor(
    color: Color(0xff664d03),
    backgroundColor: Color(0xfffff3cd),
    borderColor: Color(0xffffecb5),
  );

  /// define alert color info
  static const BsAlertColor info = BsAlertColor(
    color: Color(0xff055160),
    backgroundColor: Color(0xffcff4fc),
    borderColor: Color(0xffb6effb),
  );

  /// define alert color light
  static const BsAlertColor light = BsAlertColor(
    color: Color(0xff636464),
    backgroundColor: Color(0xfffefefe),
    borderColor: Color(0xfffdfdfe),
  );

  /// define alert color dark
  static const BsAlertColor dark = BsAlertColor(
      color: Color(0xff141619),
      backgroundColor: Color(0xffd3d3d4),
      borderColor: Color(0xffbcbebf)
  );
}

/// Class to set style of [BsAlert]
class BsAlertStyle {

  /// Constructor [BsAlertStyle]
  const BsAlertStyle({
    this.color,
    this.borderRadius,
  });

  /// define color of [BsAlert]
  final BsAlertColor? color;

  /// define borderRadius of [BsAlert]
  final BorderRadiusGeometry? borderRadius;

  /// define alert style primary
  static const BsAlertStyle primary = BsAlertStyle(
    color: BsAlertColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style secondary
  static const BsAlertStyle secondary = BsAlertStyle(
    color: BsAlertColor.secondary,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style success
  static const BsAlertStyle success = BsAlertStyle(
    color: BsAlertColor.success,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style danger
  static const BsAlertStyle danger = BsAlertStyle(
    color: BsAlertColor.danger,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style warning
  static const BsAlertStyle warning = BsAlertStyle(
    color: BsAlertColor.warning,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style info
  static const BsAlertStyle info = BsAlertStyle(
    color: BsAlertColor.info,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style light
  static const BsAlertStyle light = BsAlertStyle(
    color: BsAlertColor.light,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );

  /// define alert style dark
  static const BsAlertStyle dark = BsAlertStyle(
    color: BsAlertColor.dark,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
}

/// Wodget bootstrap alert
class BsAlert extends StatefulWidget {

  /// Construct [BsAlert]
  const BsAlert({
    Key? key,
    this.visibility = BsVisibility.block,
    this.closeButton = false,
    this.heading,
    this.style = BsAlertStyle.primary,
    this.textStyle,
    this.headingTextStyle,
    this.margin,
    this.padding,
    this.child,
    this.onClose,
  }) : super(key: key);

  /// define visibility [BsAlert]
  final BsVisibility visibility;

  /// define heading [BsAlert]
  final Widget? heading;

  /// define closeButton [BsAlert]
  final bool closeButton;

  /// define style [BsAlert]
  final BsAlertStyle style;

  /// define textStyle [BsAlert]
  final TextStyle? textStyle;

  /// define headingTextStyle [BsAlert]
  final TextStyle? headingTextStyle;

  /// define margin [BsAlert]
  final EdgeInsetsGeometry? margin;

  /// define padding [BsAlert]
  final EdgeInsetsGeometry? padding;

  /// define onClose [BsAlert]
  final VoidCallback? onClose;

  /// define child [BsAlert]
  final Widget? child;

  @override
  State<StatefulWidget> createState() {
    return _BsAlertState();
  }

}

class _BsAlertState extends State<BsAlert> {

  bool _visibility = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(microseconds: 500), () {
      BreakPoint breakPoint = BreakPoint.of(context);
      _visibility = widget.visibility.breakPoints.contains(breakPoint.state);
    });
  }

  @override
  Widget build(BuildContext context) {

    return !_visibility ? Container()
        : Container(
      margin: widget.margin,
      padding: widget.padding == null ? EdgeInsets.all(15.0) : widget.padding,
      decoration: BoxDecoration(
          color: widget.style.color!.backgroundColor,
          borderRadius: widget.style.borderRadius,
          border: Border.all(color: widget.style.color!.borderColor, width: 0.5)
      ),
      child: DefaultTextStyle(
        style: TextStyle(
            color: widget.style.color!.color,
            fontSize: 14.0
        ).merge(widget.textStyle),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.heading == null ? Container() : DefaultTextStyle(
                  style: TextStyle(
                      color: widget.style.color!.color,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold
                  ),
                  child: Container(
                    padding: EdgeInsets.only(bottom: 15.0),
                    child: widget.heading,
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: Container(child: widget.child)),
                  ],
                )
              ],
            )),
            !widget.closeButton ? Container(width: 0) : Container(
              child: TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(20.0, 20.0),
                ),
                onPressed: () => _closeAlert(),
                child: Icon(Icons.close, size: 14.0, color: widget.style.color!.color),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _closeAlert() {
    setState(() {
      _visibility = false;
      if(widget.onClose != null)
        widget.onClose!();
    });
  }

}