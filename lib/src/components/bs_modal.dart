import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

/// Class to set size of [BsModal] base on breakpint
class BsModalSize {

  /// define width of small modal
  static const double widthSm   = 300.0;

  /// define width of medium modal
  static const double widthMd   = 500.0;

  /// define width of large modal
  static const double widthLg   = 800.0;

  /// define width of extra large modal
  static const double widthXl   = 1140.0;

  /// define width of extra extra large modal
  static const double widthXxl  = 1350.0;

  /// Constructor [BsModalSize]
  const BsModalSize({
    required this.breakPoints,
    required this.width,
  });

  /// define breakPoints for modal size
  final List<String> breakPoints;

  /// define with of modal
  final double width;

  /// define modal size small
  static const BsModalSize sm = BsModalSize(
    width: widthSm,
    breakPoints: [BreakPoint.stateSm, BreakPoint.stateMd, BreakPoint.stateLg, BreakPoint.stateXl, BreakPoint.stateXxl],
  );

  /// define modal size medium
  static const BsModalSize md = BsModalSize(
    width: widthMd,
    breakPoints: [BreakPoint.stateMd, BreakPoint.stateLg, BreakPoint.stateXl, BreakPoint.stateXxl],
  );

  /// define modal size large
  static const BsModalSize lg = BsModalSize(
    width: widthLg,
    breakPoints: [BreakPoint.stateLg, BreakPoint.stateXl, BreakPoint.stateXxl],
  );

  /// define modal size extra large
  static const BsModalSize xl = BsModalSize(
    width: widthXl,
    breakPoints: [BreakPoint.stateXl, BreakPoint.stateXl, BreakPoint.stateXxl],
  );

  /// define modal size extra extra large
  static const BsModalSize xxl = BsModalSize(
    width: widthXxl,
    breakPoints: [BreakPoint.stateXxl],
  );
}

/// Widget of Bootstrap Modal
class BsModal extends StatelessWidget {

  /// Construct [BsModal]
  const BsModal({
    Key? key,
    required this.context,
    required this.dialog,
  }) : super(key: key);

  /// define context of [BsModal]
  final BuildContext context;

  /// define diaolog of [BsModal]
  final BsModalDialog dialog;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(child: dialog)
      ],
    );
  }

}

/// Widget of Bootstrap Modal Dialog
class BsModalDialog extends StatelessWidget {

  /// Construct [BsModalDialog]
  const BsModalDialog({
    Key? key,
    this.size = BsModalSize.md,
    this.child,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define size of [BsModalDialog]
  final BsModalSize size;

  /// define child of [BsModalDialog]
  final Widget? child;

  /// define crossAxisAlignment of [BsModalDialog]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsModalDialog]
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    BreakPoint breakPoint = BreakPoint.of(context);

    return Dialog(
      insetPadding: EdgeInsets.zero,
      elevation: 0,
      backgroundColor: Color(0x00000000),
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Expanded(child: Column(
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: mainAxisAlignment,
              children: [
                Scrollbar(child: SingleChildScrollView(
                  child: Container(
                    width: size.breakPoints.contains(breakPoint.state)
                        ? size.width
                        : BsModalSize.widthMd,
                    child: child,
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }

}

/// Widget of Bootstrap Modal Content
class BsModalContent extends StatelessWidget {

  /// Construct [BsModalContent]
  const BsModalContent({
    Key? key,
    this.decoration,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.children = const [],
  }) : super(key: key);

  /// define decoration [BsModalContent]
  final Decoration? decoration;

  /// define crossAxisAlignment of [BsModalContent]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignement of [BsModalContent]
  final MainAxisAlignment mainAxisAlignment;

  /// define children of [BsModalContent]
  final List<BsModalContainer> children;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(
          decoration: decoration != null ? decoration : BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
          child: Column(
            crossAxisAlignment: crossAxisAlignment,
            mainAxisAlignment: mainAxisAlignment,
            children: children,
          ),
        ))
      ],
    );
  }

}

/// Widget of Bootstrap Modal Header, Body, Footer
class BsModalContainer extends StatelessWidget {

  /// Construct [BsModalContainer]
  const BsModalContainer({
    Key? key,
    this.title,
    this.titleStyle,
    this.padding,
    this.child,
    this.actions = const [],
    this.closeButton = false,
    this.onClose,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define title of [BsModalContainer]
  final Widget? title;

  /// define titleStyle of [BsModalContainer]
  final TextStyle? titleStyle;

  /// define closeButton of [BsModalContainer]
  final bool closeButton;

  /// define padding of [BsModalContainer]
  final EdgeInsets? padding;

  /// define child of [BsModalContainer]
  final Widget? child;

  /// define actions of [BsModalContainer]
  final List<Widget> actions;

  /// define onClose of [BsModalContainer]
  final VoidCallback? onClose;

  /// define crossAxisAlignment of [BsModalContainer]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsModalContainer]
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Row(
            children: [
              title == null ? Container() : DefaultTextStyle(
                style: TextStyle(
                  fontSize: 16.0,
                  color: BsColor.color,
                  fontWeight: FontWeight.bold,
                ).merge(titleStyle),
                child: Expanded(child: Container(
                    padding: padding != null
                        ? padding
                        : EdgeInsets.all(15.0),
                    child: title
                )),
              ),
              !closeButton ? Container(width: 0) : Container(
                margin: EdgeInsets.only(right: padding != null ? padding!.right : 15.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(20.0, 20.0),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    if(onClose != null)
                      onClose!();
                  },
                  child: Icon(Icons.close, size: 14.0, color: BsColor.color),
                ),
              )
            ],
          ),
          child == null ? Container() : Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: BsColor.borderColor)
                )
            ),
          ),
          child == null ? Container() : Container(
            padding: padding == null ? EdgeInsets.all(15.0) : padding,
            child: child,
          ),
          actions.length == 0 ? Container() : Container(
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: BsColor.borderColor)
                )
            ),
          ),
          actions.length == 0 ? Container() : Container(
            padding: padding == null ? EdgeInsets.all(15.0) : padding,
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              mainAxisAlignment: mainAxisAlignment,
              children: actions,
            ),
          )
        ],
      ),
    );
  }

}