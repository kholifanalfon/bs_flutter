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
          if (valueValidate.isEmpty) return "Field tidak boleh kosong";

          return null;
        },
      );

  /// define maxLength validation
  static BsValidator maxLength(int length) {
    return BsValidator(validator: (value) {
      if (value.toString().length > length)
        return "Value tidak boleh lebih dari $length";
      return null;
    });
  }

  /// define minLength validation
  static BsValidator minLength(int length) {
    return BsValidator(validator: (value) {
      if (value.toString().length < length)
        return "Value harus boleh lebih dari $length";
      return null;
    });
  }
}
