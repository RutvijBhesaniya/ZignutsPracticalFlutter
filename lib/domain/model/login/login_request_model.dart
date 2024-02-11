class LoginRequestModel {
  LoginRequestModel(
    this.email,
    this.password,
    this.deviceToken,
    this.deviceType,
  );

  final String email;
  final String password;
  final String deviceToken;
  final String deviceType;
}
