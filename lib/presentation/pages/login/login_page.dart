import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/presentation/pages/home/bloc/home_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/home/home_page.dart';
import 'package:zignutspracticalflutter/presentation/pages/landing/bloc/landing_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/login/bloc/login_cubit.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';
import 'package:zignutspracticalflutter/presentation/widgets/oxygene_textformfield.dart';
import 'package:zignutspracticalflutter/presentation/widgets/validation.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();

  final passwordTextController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ValueNotifier<bool> isPassWordVisible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return _downlayer(context);
  }

  _downlayer(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginInFailure) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Please enter correct email and password')));
        } else if (state is LoginInSuccess) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider(
                      create: (context) => HomeCubit(),
                      child: const HomePage())));
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 35,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade500,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.blue,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Center(
                              child: Text(
                                'Customer',
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Center(
                              child: Text(
                                'Instructor',
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OxygeneTextFormField(
                    controller: emailTextController,
                    icon: 'assets/images/email.png',
                    hintText: "Email*",
                    validator: Validation.emailValidator,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ValueListenableBuilder(
                    valueListenable: isPassWordVisible,
                    builder: (context, value, child) {
                      return OxygeneTextFormField(
                        controller: passwordTextController,
                        icon: 'assets/images/password.png',
                        hintText: "Password*",
                        onSuffixTap: () {
                          isPassWordVisible.value = !isPassWordVisible.value;
                        },
                        password: !value,
                        suffixIcon: !value
                            ? "assets/images/hide.png"
                            : "assets/images/un_hide.png",
                        validator: Validation.emailValidator,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: AppColor.blue,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  MaterialButton(
                    minWidth: double.infinity,
                    onPressed: state is LoginInProgress
                        ? () {}
                        : () {
                            if (emailTextController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Please enter email')));
                            } else if (passwordTextController.text.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Please enter password')));
                            } else {
                              BlocProvider.of<LoginCubit>(context).login(
                                  emailTextController.text,
                                  passwordTextController.text);
                            }
                          },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40)),
                    color: AppColor.blue,
                    textColor: AppColor.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 20),
                    child: state is LoginInProgress
                        ? Center(
                            child: CircularProgressIndicator(
                              color: AppColor.white,
                            ),
                          )
                        : Text(
                            'LOGIN',
                            style: TextStyle(
                              color: AppColor.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: AppColor.blue,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          (BlocProvider.of<LandingCubit>(context).state
                                  as LandingInitial)
                              .tabController
                              .index = 1;
                        },
                        child: Text(
                          "SIGN UP",
                          style: TextStyle(
                            color: AppColor.blue,
                            fontSize: 17,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
