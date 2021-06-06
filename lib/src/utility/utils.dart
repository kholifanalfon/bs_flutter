import 'package:bs_flutter/src/utility/breakpoint.dart';

/// If you need to hide some widget in some breakpoint use [BsVisibility]
/// This helpful to create responsive layout
class BsVisibility {
  const BsVisibility({
    required this.breakPoints,
  });

  final List<String> breakPoints;

  /// Will hide in all screen device
  static const BsVisibility none = BsVisibility(breakPoints: []);

  /// Will show in all breakpoint
  static const BsVisibility block = BsVisibility(breakPoints: [
    BreakPoint.stateXs,
    BreakPoint.stateSm,
    BreakPoint.stateMd,
    BreakPoint.stateLg,
    BreakPoint.stateXl,
    BreakPoint.stateXxl
  ]);

  /// Will hide in [BreakPoint.stateSm] breakpoint
  static const BsVisibility hiddenSm = BsVisibility(breakPoints: [
    BreakPoint.stateMd,
    BreakPoint.stateLg,
    BreakPoint.stateXl,
    BreakPoint.stateXxl
  ]);

  /// Will hide in ([BreakPoint.stateSm], [BreakPoint.hiddenMd]) breakpoint
  static const BsVisibility hiddenMd = BsVisibility(breakPoints: [
    BreakPoint.stateLg,
    BreakPoint.stateXl,
    BreakPoint.stateXxl
  ]);

  /// Will hide in ([BreakPoint.stateSm], [BreakPoint.hiddenMd], [BreakPoint.hiddenMd]) breakpoint
  static const BsVisibility hiddenLg =
      BsVisibility(breakPoints: [BreakPoint.stateXl, BreakPoint.stateXxl]);

  /// Will hide in ([BreakPoint.stateSm], [BreakPoint.hiddenMd], [BreakPoint.hiddenMd], [BreakPoint.stateXl) breakpoint
  static const BsVisibility hiddenXl =
      BsVisibility(breakPoints: [BreakPoint.stateXxl]);

  /// Will only show on [BreakPoint.stateXxl] screen device
  static const BsVisibility hiddenXxl = BsVisibility(breakPoints: []);
}
