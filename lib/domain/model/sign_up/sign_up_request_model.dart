class SignUpRequestModel {
  final String? email;
  final String? password;
  final String? deviceToken;
  final String? firstName;
  final String? lastName;
  final String? passwordConfirmation;
  final String? deviceType;

  SignUpRequestModel({
    this.email,
    this.password,
    this.deviceToken,
    this.firstName,
    this.lastName,
    this.passwordConfirmation,
    this.deviceType
  });
}
