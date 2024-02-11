import 'package:shared_preferences/shared_preferences.dart';
import 'package:zignutspracticalflutter/data/authentication_service.dart';

class Dependency {
  static late final AuthenticationService authenticationService;
  static late final SharedPreferences sharedPreferences;
}
