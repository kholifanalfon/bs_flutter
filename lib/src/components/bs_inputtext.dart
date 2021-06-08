import 'package:bs_flutter/bs_flutter.dart';
import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Class to define of [BsInputText]
class BsInputStyle {

  /// Construct [BsInputStyle]
  const BsInputStyle({
    this.color = BsColor.primary,
    this.backgroundColor = Colors.transparent,
    this.border,
    this.borderRadius,
    this.boxShadowFocused = const [],
  });

  /// define color of [BsInputText]
  final Color? color;

  /// define color of backgroundColor [BsInputText]
  final Color? backgroundColor;

  /// define border of [BsInputText]
  final BoxBorder? border;

  /// define borderRadius of [BsInputText]
  final BorderRadiusGeometry? borderRadius;

  /// define boxShadowFocused of [BsInputText]
  final List<BoxShadow> boxShadowFocused;

  /// define style outline input text
  static const BsInputStyle outline = BsInputStyle(
      backgroundColor: Colors.white,
      border: Border(
        top: BorderSide(color: BsColor.borderColor),
        bottom: BorderSide(color: BsColor.borderColor),
        left: BorderSide(color: BsColor.borderColor),
        right: BorderSide(color: BsColor.borderColor),
      ),
      borderRadius: BorderRadius.all(Radius.circular(5.0)),
      boxShadowFocused: [
        BoxShadow(
          color: BsColor.primaryShadow,
          offset: Offset(0, 0),
          spreadRadius: 2.5,
        )
      ]
  );

  /// define style outline bottom input text
  static const BsInputStyle outlineBottom = BsInputStyle(
      border: Border(
        bottom: BorderSide(color: BsColor.borderColor)
      )
  );
}

/// Class to define size of [BsInputText]
class BsInputSize {

  /// Construct [BsInputSize]
  const BsInputSize({
    this.padding,
    this.fontSize,
    this.marginTop = 0,
    this.marginLeft = 0,
    this.transitionMarginLeft = 0,
    this.transitionMarginTop = 0,
    this.transisionFontSize = 2.0,
  });

  /// define padding of [BsInputText]
  final EdgeInsetsGeometry? padding;

  /// defin marginTop [BsInputText]
  final double? marginTop;

  /// define marginLeft [BsInputText]
  final double? marginLeft;

  /// define transitionMarginLeft [BsInputText]
  final double? transitionMarginLeft;

  /// define transitionMarginTop [BsInputText]
  final double? transitionMarginTop;

  /// define transisionFontSize [BsInputText]
  final double? transisionFontSize;

  /// defin fontSize [BsInputText]
  final double? fontSize;

  /// define input size small
  static const BsInputSize sm = BsInputSize(
    fontSize: 10.0,
    padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0),
    marginTop: 11.0,
    marginLeft: 10.0,
    transitionMarginTop: 4.0,
    transitionMarginLeft: -5.0,
  );

  /// define input size medium
  static const BsInputSize md = BsInputSize(
    fontSize: 14.0,
    padding: EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0, bottom: 14.0),
    marginTop: 12.0,
    marginLeft: 10.0,
    transitionMarginTop: 7.0,
    transitionMarginLeft: -5.0,
  );

  /// define input text large
  static const BsInputSize lg = BsInputSize(
    fontSize: 18.0,
    padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 18.0, bottom: 18.0),
    marginTop: 15.0,
    marginLeft: 18.0,
    transitionMarginTop: 10.0,
    transitionMarginLeft: -5.0,
  );

  /// define size input text outline bottom small
  static const BsInputSize outlineBottomSm = BsInputSize(
    fontSize: 10.0,
    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 10.0, bottom: 10.0),
    marginTop: 10.0,
    marginLeft: 5.0,
    transitionMarginTop: 5.0,
  );

  /// define size input text outline bottom medium
  static const BsInputSize outlineBottomMd = BsInputSize(
    fontSize: 14.0,
    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 14.0, bottom: 14.0),
    marginTop: 14.0,
    marginLeft: 5.0,
    transitionMarginTop: 10.0,
  );

  /// define size input outline bottom large
  static const BsInputSize outlineBottomLg = BsInputSize(
    fontSize: 18.0,
    padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 14.0, bottom: 14.0),
    marginTop: 10.0,
    marginLeft: 5.0,
    transitionMarginTop: 10.0,
    transisionFontSize: 5.0,
  );
}

/// Widget of Bootstrap Input Text and customize input text
class BsInput extends StatefulWidget {

  /// Construct BsInput
  const BsInput({
    Key? key,
    this.style = BsInputStyle.outline,
    this.size = BsInputSize.md,
    this.hintText,
    this.hintTextLabel,
    this.focusNode,
    this.width,
    this.disabled = false,
    this.readOnly = false,
    this.minLines = 1,
    this.maxLines = 1,
    required this.controller,
    this.obscureText = false,
    this.autofocus = false,
    this.autocorrect = false,
    this.keyboardType,
    this.inputFormatters,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textCapitalization = TextCapitalization.none,
    this.textDirection,
    this.textInputAction,
    this.onTap,
    this.onEditingComplete,
    this.onChange,
    this.onFieldSubmitted,
    this.onSaved,
    this.showCursor,
    this.cursorColor,
    this.cursorHeight,
    this.cursorWidth = 2.0,
    this.cursorRadius,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.scrollController,
    this.scrollPhysics,
    this.validators = const [],
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _BsInputState();
  }

  /// define style of [BsInput]
  final BsInputStyle style;

  /// define size of [BsInput]
  final BsInputSize size;

  /// define width of [BsInput]
  final double? width;

  /// define disabled of [BsInput]
  final bool disabled;

  /// define readOnley of [BsInput]
  final bool readOnly;

  /// define hintText of [BsInput]
  final String? hintText;

  /// define hintTextLabel of [BsInput]
  final String? hintTextLabel;

  /// define maxLines of [BsInput]
  final int? maxLines;

  /// define maxLines of [BsInput]
  final int? minLines;

  /// define focusNode of [BsInput]
  final FocusNode? focusNode;

  /// define controller of [BsInput]
  final TextEditingController controller;

  /// define obscureText of [BsInput]
  final bool obscureText;

  /// define autofocus of [BsInput]
  final bool autofocus;

  /// define autocorrect of [BsInput]
  final bool autocorrect;

  /// define keyboardType of [BsInput]
  final TextInputType? keyboardType;

  /// define inputFormatters of [BsInput]
  final List<TextInputFormatter>? inputFormatters;

  /// define textAlign of [BsInput]
  final TextAlign textAlign;

  /// define textAlignVertical [BsInput]
  final TextAlignVertical? textAlignVertical;

  /// define textCapitalization [BsInput]
  final TextCapitalization textCapitalization;

  /// define textDirection [BsInput\
  final TextDirection? textDirection;

  /// define textInputAction [BsInput]
  final TextInputAction? textInputAction;

  /// define onTap [BsInput]
  final GestureTapCallback? onTap;

  /// define onEditingComplete [BsInput]
  final VoidCallback? onEditingComplete;

  /// define onChange [BsInput]
  final ValueChanged<String>? onChange;

  /// define onFieldSubmitted [BsInput]
  final FormFieldSetter<String>? onFieldSubmitted;

  /// define onSave [BsInput]
  final FormFieldSetter<String>? onSaved;

  /// define showCursor [BsInput]
  final bool? showCursor;

  /// define cursorWidth [BsInput]
  final double cursorWidth;

  /// define cursorHeight [BsInput]
  final double? cursorHeight;

  /// define cursorRadius [BsInput]
  final Radius? cursorRadius;

  /// define cusrorColor [BsInput]
  final Color? cursorColor;

  /// define scrollPadding [BsInput]
  final EdgeInsets scrollPadding;

  /// define scrollPhysics [BsInput]
  final ScrollPhysics? scrollPhysics;

  /// define scrolLController [BsInput]
  final ScrollController? scrollController;

  /// define validators [BsInput]
  final List<BsValidator> validators;
}

class _BsInputState extends State<BsInput> with SingleTickerProviderStateMixin {

  FocusNode? focusNode;
  FormFieldState? formFieldState;

  Duration duration = Duration(milliseconds: 100);
  AnimationController? animated;

  String? get hintText {
    if(widget.hintText == null)
      return '';

    return widget.hintText;
  }

  bool get valid => (formFieldState != null && formFieldState!.validate()) || (_errorText == null);

  String? _errorText;
  TextEditingController get controller => widget.controller;
  String get initialValue => controller.text;
  bool get isEmpty => controller.text == '';

  @override
  void initState() {
    focusNode = widget.focusNode == null ? FocusNode() : widget.focusNode;
    focusNode!.addListener(onFocusNode);

    animated = AnimationController(
        vsync: this,
        duration: duration
    );
    super.initState();
  }

  @override
  void didUpdateWidget(covariant BsInput oldWidget) {
    animated!.duration = duration;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    focusNode!.dispose();
    animated!.dispose();

    super.dispose();
  }

  void onFocusNode() {
    setState(() {
      if(!focusNode!.hasFocus) {
        _errorText = null;
        widget.validators.map((validator) {
          if(_errorText == null) _errorText = validator.validator(controller.text);
        }).toList();
        animated!.reverse();
      } else {
        animated!.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            FormField(
              initialValue: initialValue,
              validator: (value) {
                return _errorText;
              },
              builder: (field) {
                if(formFieldState == null)
                  formFieldState = field;

                BoxBorder? border = widget.style.border;
                if(focusNode!.hasFocus)
                  if(widget.style.boxShadowFocused.length == 0)
                    border = Border(bottom: BorderSide(color: BsColor.primary));
                  else border = Border.all(color: BsColor.primary);

                if(!valid)
                  if(widget.style.boxShadowFocused.length == 0)
                    border = Border(bottom: BorderSide(color: BsColor.danger));
                  else border = Border.all(color: BsColor.danger);

                List<BoxShadow> boxShadow = [];
                if(focusNode!.hasFocus)
                  boxShadow = widget.style.boxShadowFocused;

                if(!valid && widget.style.boxShadowFocused.length != 0)
                  boxShadow = [
                    BoxShadow(
                      color: BsColor.dangerShadow,
                      offset: Offset(0, 0),
                      spreadRadius: 2.5,
                    )
                  ];

                return Container(
                    decoration: BoxDecoration(
                        color: widget.style.backgroundColor,
                        border: border,
                        borderRadius: widget.style.borderRadius,
                        boxShadow: boxShadow
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: hintText,
                              contentPadding: widget.size.padding,
                              isDense: true,
                              hintStyle: TextStyle(
                                fontSize: widget.size.fontSize,
                              )
                          ),
                          focusNode: focusNode,
                          enabled: !widget.disabled,
                          readOnly: widget.readOnly,
                          autofocus: widget.autofocus,
                          autocorrect: widget.autocorrect,
                          maxLines: widget.maxLines,
                          minLines: widget.minLines,
                          controller: controller,
                          obscureText: widget.obscureText,
                          keyboardType: widget.keyboardType,
                          inputFormatters: widget.inputFormatters,
                          textAlign: widget.textAlign,
                          textAlignVertical: widget.textAlignVertical,
                          textCapitalization: widget.textCapitalization,
                          textDirection: widget.textDirection,
                          textInputAction: widget.textInputAction,
                          onTap: widget.onTap,
                          onEditingComplete: widget.onEditingComplete,
                          onChanged: (value) {
                            field.didChange(value);
                            if(widget.onChange != null)
                              widget.onChange!(value);
                          },
                          onFieldSubmitted: (value) {
                            field.didChange(value);
                            if(widget.onFieldSubmitted != null)
                              widget.onFieldSubmitted!(value);
                          },
                          onSaved: (value) {
                            field.didChange(value);
                            if(widget.onSaved != null)
                              widget.onSaved!(value);
                          },
                          showCursor: widget.showCursor,
                          cursorColor: widget.cursorColor,
                          cursorHeight: widget.cursorHeight,
                          cursorRadius: widget.cursorRadius,
                          cursorWidth: widget.cursorWidth,
                          scrollPadding: widget.scrollPadding,
                          scrollController: widget.scrollController,
                          scrollPhysics: widget.scrollPhysics,
                        ),
                      ],
                    )
                );
              },
            ),
            valid ? Container() : Container(
              margin: EdgeInsets.only(top: 5.0, left: 2.0),
              alignment: Alignment.centerLeft,
              child: Text(
                _errorText.toString(),
                style: TextStyle(
                    fontSize: 12.0,
                    color: BsColor.textError
                ),
              ),
            )
          ],
        ),
        widget.hintTextLabel == null ? Container(width: 0) : GestureDetector(
          onTap: () => focusNode!.requestFocus(),
          child: widget.hintTextLabel != null ? renderHintTextLabel(valid ? widget.style.color! : BsColor.textError, Colors.grey) : Text(''),
        ),
      ],
    );
  }

  Widget renderHintTextLabel(Color color, Color placeholderColor) {
    return AnimatedBuilder(
      animation: animated!,
      builder: (context, _) {
        double top = isEmpty ? (widget.size.marginTop! + widget.size.transitionMarginTop!) * animated!.value
            : widget.size.transitionMarginTop!;

        double left = isEmpty ? (widget.size.marginLeft! + widget.size.transitionMarginLeft!) * animated!.value : widget.size.transitionMarginLeft!;

        double fontSize = isEmpty ? widget.size.fontSize! - (widget.size.transisionFontSize! * animated!.value).toDouble()
            : widget.size.fontSize! - widget.size.transisionFontSize!;


        Color textColor = color;
        if(animated!.value == 0)
          textColor = placeholderColor;

        if(!isEmpty && animated!.value == 1)
          textColor = color;

        return Transform(
          transform: Matrix4.identity()
            ..translate(-left, -top),
          child: Container(
            padding: EdgeInsets.only(left: 2.0, right: 2.0),
            margin: EdgeInsets.only(left: isEmpty ? widget.size.marginLeft! : 0, top: isEmpty ? widget.size.marginTop! : 0),
            color: widget.style.backgroundColor,
            child: Text(widget.hintTextLabel!, style: TextStyle(
              fontSize: fontSize,
              color: textColor,
            ), overflow: TextOverflow.ellipsis),
          ),
        );
      },
    );
  }

}