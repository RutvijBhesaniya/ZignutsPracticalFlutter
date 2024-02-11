import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkUtils {
  ///return true if network is avaialble
  static Future<bool> isAvailable() async =>
      InternetConnectionChecker().hasConnection;
}
