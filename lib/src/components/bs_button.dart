import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

/// Class for custom [BsButton]
class BsButtonStyle {

  // Constructor BsButtonStyle
  const BsButtonStyle({
    this.color,
    this.borderColor = Colors.transparent,
    this.borderRadius = BorderRadius.zero,
    this.backgroundColor,
  });

  /// define color of [BsButton]
  final Color? color;

  /// define borderColor of [BsButton]
  final Color borderColor;

  /// define borderRadius of [BsButton]
  final BorderRadiusGeometry borderRadius;

  /// define backgroundColor of [BsButton]
  final Color? backgroundColor;

  /// define style primary button
  static const BsButtonStyle primary = BsButtonStyle(
    color: Colors.white,
    borderColor: BsColor.primary,
    backgroundColor: BsColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style secondary button
  static const BsButtonStyle secondary = BsButtonStyle(
      color: Colors.white,
      borderColor: BsColor.secondary,
      backgroundColor: BsColor.secondary,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style danger button
  static const BsButtonStyle danger = BsButtonStyle(
      color: Colors.white,
      borderColor: BsColor.danger,
      backgroundColor: BsColor.danger,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style success button
  static const BsButtonStyle success = BsButtonStyle(
      color: Colors.white,
      borderColor: BsColor.success,
      backgroundColor: BsColor.success,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style warning button
  static const BsButtonStyle warning = BsButtonStyle(
      color: Colors.white,
      borderColor: BsColor.warning,
      backgroundColor: BsColor.warning,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style info button
  static const BsButtonStyle info = BsButtonStyle(
      color: Colors.white,
      borderColor: BsColor.info,
      backgroundColor: BsColor.info,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style light button
  static const BsButtonStyle light = BsButtonStyle(
      color: Colors.black,
      borderColor: BsColor.light,
      backgroundColor: BsColor.light,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style dark button
  static const BsButtonStyle dark = BsButtonStyle(
      color: Colors.white,
      borderColor: BsColor.dark,
      backgroundColor: BsColor.dark,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlinePrimary button
  static const BsButtonStyle outlinePrimary = BsButtonStyle(
      color: BsColor.primary,
      borderColor: BsColor.primary,
      backgroundColor: Colors.transparent,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineSecondary button
  static const BsButtonStyle outlineSecondary = BsButtonStyle(
      color: BsColor.secondary,
      borderColor: BsColor.secondary,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineSuccess button
  static const BsButtonStyle outlineSuccess = BsButtonStyle(
      color: BsColor.success,
      borderColor: BsColor.success,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineDanger button
  static const BsButtonStyle outlineDanger = BsButtonStyle(
      color: BsColor.danger,
      borderColor: BsColor.danger,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineWarning button
  static const BsButtonStyle outlineWarning = BsButtonStyle(
      color: BsColor.warning,
      borderColor: BsColor.warning,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineInfo
  static const BsButtonStyle outlineInfo = BsButtonStyle(
      color: BsColor.info,
      borderColor: BsColor.info,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineLight
  static const BsButtonStyle outlineLight = BsButtonStyle(
      color: BsColor.light,
      borderColor: BsColor.light,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );

  /// define style outlineDark
  static const BsButtonStyle outlineDark = BsButtonStyle(
      color: BsColor.dark,
      borderColor: BsColor.dark,
      backgroundColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(3.0))
  );
}

/// Class to create size of [BsButton]
class BsButtonSize {

  /// Constructor of [BsButtonSize]
  const BsButtonSize({
    this.padding,
    this.fontSize,
    this.iconSize,
    this.spaceLabelIcon = 5.0,
    this.minimumSize
  });

  /// define padding of [BsButton]
  final EdgeInsets? padding;

  /// define fontSize of [BsButton]
  final double? fontSize;

  /// define iconSize of [BsButton]
  final double? iconSize;

  /// define spaceLabelIcon of [BsButton]
  final double spaceLabelIcon;

  /// define minimumSize of [BsButton]
  final Size? minimumSize;

  /// define size buttonIconSm button
  static const BsButtonSize btnIconSm = BsButtonSize(
    iconSize: 12.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(30.0, 30.0),
  );

  /// define size btnIconMd button
  static const BsButtonSize btnIconMd = BsButtonSize(
    iconSize: 18.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(40.0, 40.0),
  );

  /// define size btnIconLg button
  static const BsButtonSize btnIconLg = BsButtonSize(
    iconSize: 22.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(50.0, 50.0),
  );

  /// define size btnSm button
  static const BsButtonSize btnSm = BsButtonSize(
    iconSize: 10.0,
    fontSize: 10.0,
    padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
    minimumSize: Size(30.0, 30.0),
  );

  /// define size btnMd button
  static const BsButtonSize btnMd = BsButtonSize(
    padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
    fontSize: 12.0,
    iconSize: 12.0,
    minimumSize: Size(40.0, 40.0),
  );

  /// define size btnLg button
  static const BsButtonSize btnLg = BsButtonSize(
      iconSize: 18.0,
      fontSize: 18.0,
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0, bottom: 10.0),
      minimumSize: Size(50.0, 50.0),
      spaceLabelIcon: 10.0
  );
}

/// Widget class of button
class BsButton extends StatelessWidget {

  /// Construct [BsButton]
  const BsButton({
    Key? key,
    required this.onPressed,
    this.width,
    this.margin,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.badge,
    this.onLongPressed,
    this.style = BsButtonStyle.secondary,
    this.size = BsButtonSize.btnMd,
    this.autofocus = false,
    this.disabled = false,
    this.focusNode,
    this.clipBehavior = Clip.none,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);

  /// define width of [BsButton]
  final double? width;

  /// define label of [BsButton]
  final Widget? label;

  /// define onPressed of [BsButton]
  final VoidCallback onPressed;

  /// define prefixIcon of [BsButton]
  final IconData? prefixIcon;

  /// define suffixIcon of [BsButton]
  final IconData? suffixIcon;

  /// define badge of [BsButton]
  final Widget? badge;

  /// define onLongPressed of [BsButton]
  final VoidCallback? onLongPressed;

  /// define style of [BsButton]
  final BsButtonStyle? style;

  /// define size of [BsButton]
  final BsButtonSize? size;

  /// define margin of [BsButton]
  final EdgeInsetsGeometry? margin;

  /// define autofocus of [BsButton]
  final bool autofocus;

  /// define disabled of [BsButton]
  final bool disabled;

  /// define focusNode of [BsButton]
  final FocusNode? focusNode;

  /// define clipBehavior of [BsButton]
  final Clip clipBehavior;

  /// define crossAxisAlignment of [BsButton]
  final CrossAxisAlignment crossAxisAlignment;

  /// define mainAxisAlignment of [BsButton]
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Container(
          width: width,
          margin: margin,
          child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: disabled && style!.backgroundColor != Colors.transparent
                    ? style!.backgroundColor!.withOpacity(0.5)
                    : style!.backgroundColor,
                padding: size!.padding,
                minimumSize: size!.minimumSize,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: !disabled ? style!.borderColor : style!.borderColor.withOpacity(0.5),
                  ),
                  borderRadius: style!.borderRadius,
                ),
              ),
              onPressed: () => !disabled ? onPressed() : {},
              onLongPress: onLongPressed,
              focusNode: focusNode,
              clipBehavior: clipBehavior,
              autofocus: autofocus,
              child: DefaultTextStyle(
                style: TextStyle(
                  color: !disabled ? style!.color : style!.color!.withOpacity(0.5),
                  fontSize: size!.fontSize,
                  fontWeight: FontWeight.w100,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    prefixIcon == null ? Container(width: 0)
                      : Container(
                          margin: label != null ? EdgeInsets.only(right: size!.spaceLabelIcon) : EdgeInsets.zero,
                          child: Icon(prefixIcon, size: size!.iconSize, color: !disabled ? style!.color : style!.color!.withOpacity(0.5)),
                        ),
                    label == null ? Container(width: 0)
                      : Container(child: label),
                    badge == null ? Container(width: 0)
                      : Container(margin: EdgeInsets.only(left: size!.spaceLabelIcon, right: suffixIcon == null ? size!.spaceLabelIcon : 0.0),child: badge),
                    suffixIcon == null ? Container(width: 0)
                      : Container(
                          margin: label != null ? EdgeInsets.only(left: size!.spaceLabelIcon) : EdgeInsets.zero,
                          child: Icon(suffixIcon, size: size!.iconSize, color: !disabled ? style!.color : style!.color!.withOpacity(0.5)),
                        ),
                  ],
                ),
              )
          ),
        )
      ],
    );
  }
}