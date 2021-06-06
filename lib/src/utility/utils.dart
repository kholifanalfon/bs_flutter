import 'package:bs_flutter/src/utility/breakpoint.dart';
import 'package:flutter/material.dart';

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

/// Defines color
class BsColor {

  static const Color color = Color(0xff212529);

  static const Color borderColor = Color(0xffdee2e6);

  static const Color primary = Color(0xff0d6efd);
  static const Color secondary = Colors.grey;
  static const Color danger = Color(0xffdc3545);
  static const Color success = Color(0xff198754);
  static const Color warning = Color(0xffffc107);
  static const Color info = Color(0xff0dcaf0);
  static const Color light = Color(0xfff8f9fa);
  static const Color dark = Color(0xff212529);

  static const Color primaryShadow = Color(0xffc2dbfe);
  static const Color dangerShadow = Color(0xfff0a9b0);

  static const Color textError = Color(0xffdc3545);
}

/// Type definition for custom bs form validator
typedef BsValidatorValue<String> = String? Function(String value);

/// Class custom validator
class BsValidator {

  /// Construct [BsValidator]
  const BsValidator({
    required this.validator,
  });

  /// validator function to check value is valid or not
  final BsValidatorValue<String> validator;

  /// define required validation
  static BsValidator get required => BsValidator(
    validator: (value) {
      String valueValidate = value.toString().trim();
      if(valueValidate.isEmpty) return "Field tidak boleh kosong";

      return null;
    },
  );

  /// define maxLength validation
  static BsValidator maxLength(int length) {
    return BsValidator(
        validator: (value) {
          if(value.toString().length > length) return "Value tidak boleh lebih dari $length";
          return null;
        }
    );
  }

  /// define minLength validation
  static BsValidator minLength(int length) {
    return BsValidator(
        validator: (value) {
          if(value.toString().length < length) return "Value harus boleh lebih dari $length";
          return null;
        }
    );
  }
}
