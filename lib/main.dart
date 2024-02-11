import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/data/authentication_service.dart';
import 'package:zignutspracticalflutter/presentation/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initialize();
  runApp(const MyApp());
}

Future<void> initialize() async {
  Dependency.authenticationService = AuthenticationService();
  Dependency.sharedPreferences = await SharedPreferences.getInstance();
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
