import 'package:flutter/material.dart';

/// To create screen category or to identified device size base on screen width
/// And to define required properties in breakpoints
///
/// Bootstrap v5.0 provides custom breakpoints
/// but for now it is still not possible to customize breakpoints in this package
///
/// More information about Bootstrap Breakpoint visit:
/// https://getbootstrap.com/docs/5.0/layout/breakpoints/
class BreakPoint {
  static const double _widthXxl = 1400.0;
  static const double _widthXl = 1200.0;
  static const double _widthLg = 992.0;
  static const double _widthMd = 768.0;
  static const double _widthSm = 576.0;

  static const double _containerXxl = 1320.0;
  static const double _containerXl = 1140.0;
  static const double _containerLg = 960.0;
  static const double _containerMd = 720.0;
  static const double _containerSm = 576.0;

  static const String stateXxl = 'xxl';
  static const String stateXl = 'xl';
  static const String stateLg = 'lg';
  static const String stateMd = 'md';
  static const String stateSm = 'sm';
  static const String stateXs = 'xs';

  BreakPoint({
    this.breakpoint,
    this.screenWidth,
    this.containerWidth,
    this.state,
  });

  /// Use them to control when your layout can be adapted at a particular device size.
  final double? breakpoint;

  /// Current screen width from [MediaQuery]
  final double? screenWidth;

  /// Maximum width of [BsContainer] widget based on [breakpoint]
  final double? containerWidth;

  /// String [state] for easy identification [screenWidth] category based on [breakpoint]
  final String? state;

  /// Use this to identification current [state] and get all the properties present
  /// on the [breakpoint]
  factory BreakPoint.of(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth >= _widthXxl) {
      return BreakPoint(
        breakpoint: _widthXxl,
        containerWidth: _containerXxl,
        screenWidth: screenWidth,
        state: stateXxl,
      );
    } else if (screenWidth >= _widthXl) {
      return BreakPoint(
        breakpoint: _widthXl,
        containerWidth: _containerXl,
        screenWidth: screenWidth,
        state: stateXl,
      );
    } else if (screenWidth >= _widthLg) {
      return BreakPoint(
        breakpoint: _widthLg,
        containerWidth: _containerLg,
        screenWidth: screenWidth,
        state: stateLg,
      );
    } else if (screenWidth >= _widthMd) {
      return BreakPoint(
        breakpoint: _widthMd,
        containerWidth: _containerMd,
        screenWidth: screenWidth,
        state: stateMd,
      );
    } else if (screenWidth >= _widthSm) {
      return BreakPoint(
        breakpoint: _widthSm,
        containerWidth: _containerSm,
        screenWidth: screenWidth,
        state: stateSm,
      );
    }

    return BreakPoint(
      breakpoint: 0.0,
      containerWidth: screenWidth,
      screenWidth: screenWidth,
      state: stateXs,
    );
  }
}
