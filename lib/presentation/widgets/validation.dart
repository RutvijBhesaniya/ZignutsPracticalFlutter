class Validation {
  ///empty validation
  static String? emptyValidator(final String? str) {
    if (str?.trim().isEmpty ?? true) {
      return 'Required';
    }

    return null;
  }

  ///email validation
  static String? emailValidator(final String? str) {
    if (str?.trim().isEmpty ?? true) {
      return 'Required';
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(str!.trim())) {
      return 'Invalid Email';
    }

    return null;
  }
}
