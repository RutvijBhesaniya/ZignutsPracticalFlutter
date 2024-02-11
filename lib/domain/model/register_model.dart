class Register {
  Register(
    this.email,
    this.password,
    this.deviceToken,
    this.deviceType,
    this.categoryId,
    this.firstName,
    this.lastName,
    this.passwordConfirmation,
  );

  final String email;
  final String password;
  final String deviceToken;
  final String deviceType;
  final String categoryId;
  final String firstName;
  final String lastName;
  final String passwordConfirmation;
}
