import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/presentation/pages/landing/bloc/landing_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/login/bloc/login_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/login/login_page.dart';
import 'package:zignutspracticalflutter/presentation/pages/sign_up/bloc/sign_up_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/sign_up/sign_up_page.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LandingCubit, LandingState>(
        builder: (context, state) {
          if (state is LandingInitial) {
            return Column(
              children: [
                Stack(
                  children: [
                    _upperLayer(context),
                    Positioned(
                      bottom: 0,
                      child: SizedBox(
                        height: 30,
                        width: 400,
                        child: TabBar(
                          dividerColor: Colors.transparent,
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: const UnderlineTabIndicator(
                            borderSide:
                                BorderSide(width: 3.0, color: Colors.grey),
                          ),
                          controller: state.tabController,
                          tabs: [
                            Tab(
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: AppColor.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: TabBarView(controller: state.tabController, children: [
                    BlocProvider(
                      create: (context) => LoginCubit(),
                      child: const LoginPage(),
                    ),
                    BlocProvider(
                      create: (context) => SignUpCubit(),
                      child: const SignUpPage(),
                    ),
                  ]),
                )
              ],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  _upperLayer(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.5,
      width: double.infinity,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          ///background image
          Image.asset(
            'assets/images/background_image.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),

          ///title text
          Positioned(
            top: MediaQuery.of(context).size.height / 6.3,
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
            top: MediaQuery.of(context).size.height / 4.6,
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
