import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/presentation/pages/landing/bloc/landing_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/landing/landing_page.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => BlocProvider(
            create: (context) => LandingCubit(this),
            child: LandingPage(),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ///background image
          Image.asset(
            'assets/images/splash_screen.png',
            height: double.infinity,
            fit: BoxFit.fill,
          ),

          ///title text
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            child: Text(
              "OXYGENE",
              style: TextStyle(
                color: AppColor.white,
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
          ),

          ///sub title text
          Positioned(
            top: MediaQuery.of(context).size.height / 1.77,
            child: Text(
              "SKI - SNOWBOARD - BIKE",
              style: TextStyle(
                color: AppColor.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
