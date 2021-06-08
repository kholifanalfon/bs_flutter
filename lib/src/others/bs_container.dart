import 'package:bs_flutter_utils/bs_flutter_utils.dart';
import 'package:flutter/cupertino.dart';

class BsFluid {
  const BsFluid({
    required this.breakPoints,
  });

  final List<String> breakPoints;

  static const BsFluid none = BsFluid(
    breakPoints: [],
  );

  static const BsFluid sm = BsFluid(
    breakPoints: [BreakPoint.stateXs],
  );

  static const BsFluid md = BsFluid(
    breakPoints: [BreakPoint.stateXs, BreakPoint.stateSm],
  );

  static const BsFluid lg = BsFluid(breakPoints: [
    BreakPoint.stateXs,
    BreakPoint.stateSm,
    BreakPoint.stateMd
  ]);

  static const BsFluid xl = BsFluid(breakPoints: [
    BreakPoint.stateXs,
    BreakPoint.stateSm,
    BreakPoint.stateMd,
    BreakPoint.stateLg
  ]);

  static const BsFluid xxl = BsFluid(breakPoints: [
    BreakPoint.stateXs,
    BreakPoint.stateSm,
    BreakPoint.stateMd,
    BreakPoint.stateLg,
    BreakPoint.stateXl
  ]);

  static const BsFluid block = BsFluid(breakPoints: [
    BreakPoint.stateXs,
    BreakPoint.stateSm,
    BreakPoint.stateMd,
    BreakPoint.stateLg,
    BreakPoint.stateXl,
    BreakPoint.stateXxl
  ]);
}

class BsContainer extends StatelessWidget {
  const BsContainer({
    Key? key,
    this.fluid = BsFluid.sm,
    this.visibility = BsVisibility.block,
    this.alignment,
    this.constraints,
    this.height,
    this.padding,
    this.margin,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.transform,
    this.transformAligment,
    this.clipBehavior = Clip.none,
    this.child,
  }) : super(key: key);

  final BsFluid fluid;

  final BsVisibility visibility;

  final AlignmentGeometry? alignment;

  final BoxConstraints? constraints;

  final Color? color;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final EdgeInsetsGeometry? margin;

  final Decoration? decoration;

  final Decoration? foregroundDecoration;

  final Matrix4? transform;

  final AlignmentGeometry? transformAligment;

  final Clip clipBehavior;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    BreakPoint breakPoint = BreakPoint.of(context);

    return !visibility.breakPoints.contains(breakPoint.state)
        ? Container(width: 0)
        : Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Container(
                    color: color,
                    constraints: constraints,
                    alignment: alignment,
                    height: height,
                    width: fluid.breakPoints.contains(breakPoint.state)
                        ? double.infinity
                        : breakPoint.containerWidth,
                    padding: padding,
                    margin: margin,
                    decoration: decoration,
                    foregroundDecoration: foregroundDecoration,
                    transform: transform,
                    transformAlignment: transformAligment,
                    clipBehavior: clipBehavior,
                    child: child,
                  )
                ],
              ))
            ],
          );
  }
}
