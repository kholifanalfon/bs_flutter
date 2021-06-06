part of bs_row;

/// Use [BsCol] to define column in [BsRow]
///
/// If [sizes] is empty will automatically using [Col.col_12] in all screen device or all [BreakPoint]
class BsCol extends StatelessWidget {
  const BsCol({
    Key? key,
    this.visibility = BsVisibility.block,
    this.sizes = const ColScreen(),
    this.order = const ColOrder(),
    this.offset = const ColScreen(),
    this.color,
    this.height,
    this.constraints,
    this.padding,
    this.margin,
    this.alignment,
    this.decoration,
    this.foregroundDecoration,
    this.transform,
    this.transformAlignment,
    this.clipBehavior = Clip.none,
    this.child,
  }) : super(key: key);

  /// If you need to hide [BsCol] on some screen device or [BreakPoint]
  /// use [BsVisibility]
  /// Example:
  /// - [BsVisibility.hiddenSm] will hide in small screen device or [BreakPoint.stateSm]
  ///
  final BsVisibility visibility;

  /// Set width of [BsCol] base on [BreakPoint] using [ColScreen]
  /// if [sizes] is empty, system automatically using [Col.col_12] in all breakpoint
  final ColScreen sizes;

  /// If you need to change order of [BsCol] in some [BreakPoint]
  /// [ColOrder] is very helpful
  final ColOrder order;

  /// Set offset of [BsCol] base on [BreakPoint] using [ColScreen]
  final ColScreen offset;

  /// Color of Container widget in [BsCol]
  final Color? color;

  /// Constraints of Container widget in [BsCol]
  final BoxConstraints? constraints;

  /// AlignmentGeometry of Container widget in [BsCol]
  final AlignmentGeometry? alignment;

  /// Height of Container widget in [BsCol]
  final double? height;

  /// Padding of Container widget in [BsCol]
  final EdgeInsetsGeometry? padding;

  /// Margin of Container widget in [BsCol]
  final EdgeInsets? margin;

  /// Decoration of Container widget in [BsCol]
  final Decoration? decoration;

  /// Foreground Decoration of Container widget in [BsCol]
  final Decoration? foregroundDecoration;

  /// Matrix4 Transform of Container widget in [BsCol]
  final Matrix4? transform;

  /// AlignmentGeometry of Container widget in [BsCol]
  final AlignmentGeometry? transformAlignment;

  /// Clip of Container widget in [BsCol]
  final Clip clipBehavior;

  /// Child of [BsCol]
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    BreakPoint breakPoint = BreakPoint.of(context);

    return !visibility.breakPoints.contains(breakPoint.state)
        ? Container(width: 0)
        : LayoutBuilder(
            builder: (context, constraints) {
              return Container(
                  alignment: alignment,
                  height: height,
                  padding: padding,
                  margin: margin,
                  color: color,
                  constraints: constraints,
                  decoration: decoration,
                  foregroundDecoration: foregroundDecoration,
                  transform: transform,
                  transformAlignment: transformAlignment,
                  clipBehavior: clipBehavior,
                  child: Container(child: child));
            },
          );
  }
}
