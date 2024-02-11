import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/presentation/pages/landing/bloc/landing_cubit.dart';
import 'package:zignutspracticalflutter/presentation/pages/sign_up/bloc/sign_up_cubit.dart';
import 'package:zignutspracticalflutter/presentation/utils/colors.dart';
import 'package:zignutspracticalflutter/presentation/widgets/oxygene_textformfield.dart';
import 'package:zignutspracticalflutter/presentation/widgets/validation.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final firstNameTextController = TextEditingController();
  final lastNameTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final cPasswordTextController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ValueNotifier<bool> terms = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Failed to create account'),
              ),
            );
          } else if (state is SignUpSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Successfully created account'),
              ),
            );

            (BlocProvider.of<LandingCubit>(context).state as LandingInitial)
                .tabController
                .index = 0;
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
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

                    ///first name
                    OxygeneTextFormField(
                      controller: firstNameTextController,
                      icon: 'assets/images/profile_image.png',
                      hintText: "First Name*",
                      validator: Validation.emptyValidator,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ///last name
                    OxygeneTextFormField(
                      controller: lastNameTextController,
                      icon: 'assets/images/profile_image.png',
                      hintText: "Last Name*",
                      validator: Validation.emptyValidator,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ///email
                    OxygeneTextFormField(
                      controller: emailTextController,
                      icon: 'assets/images/email.png',
                      hintText: "Email*",
                      validator: Validation.emailValidator,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ///password
                    OxygeneTextFormField(
                      controller: passwordTextController,
                      icon: 'assets/images/password.png',
                      hintText: "Password*",
                      validator: Validation.emptyValidator,
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    ///confirm password
                    OxygeneTextFormField(
                      controller: cPasswordTextController,
                      icon: 'assets/images/password.png',
                      hintText: "Confirm Password*",
                      validator: Validation.emptyValidator,
                    ),

                    const SizedBox(
                      height: 40,
                    ),

                    GestureDetector(
                      onTap: () {
                        terms.value = !terms.value;
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ValueListenableBuilder<bool>(
                            valueListenable: terms,
                            builder: (context, value, child) {
                              return Image.asset(
                                value
                                    ? "assets/images/selected_tick.png"
                                    : "assets/images/unselected_tick.png",
                                // height:100,
                                width: MediaQuery.of(context).size.width / 15,
                              );
                            },
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I hereby accept the",
                                    style: TextStyle(
                                      color: AppColor.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const TextSpan(text: " "),
                                  TextSpan(
                                    text: "Terms and Condition",
                                    style: TextStyle(
                                      color: AppColor.blue,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const TextSpan(text: " "),
                                  TextSpan(
                                    text: "and have read the",
                                    style: TextStyle(
                                      color: AppColor.blue,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  const TextSpan(text: " "),
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.blue,
                                      fontSize: 15,
                                      fontStyle: FontStyle.italic,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),

                    MaterialButton(
                      minWidth: double.infinity,
                      onPressed: state is SignUpInProgress
                          ? () {}
                          : () {
                              if (!terms.value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            ' Please accept Terms&Condition')));
                              } else if (firstNameTextController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text(' Please enter first name')));
                              } else if (lastNameTextController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text(' Please enter last name')));
                              } else if (emailTextController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Please enter email')));
                              } else if (passwordTextController.text.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text('Please enter password')));
                              } else if (cPasswordTextController.text !=
                                  passwordTextController.text) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            ' confirm password and passowrd should be same')));
                              } else if (passwordTextController.text.length <
                                  8) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text(
                                        'Password must be at least 8 characters'),
                                  ),
                                );
                              } else {
                                BlocProvider.of<SignUpCubit>(context).signUp(
                                  emailTextController.text,
                                  passwordTextController.text,
                                  cPasswordTextController.text,
                                  firstNameTextController.text,
                                  lastNameTextController.text,
                                );

                                // (BlocProvider.of<LandingCubit>(context).state
                                //         as LandingInitial)
                                //     .tabController
                                //     .index = 0;
                              }
                            },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      color: AppColor.blue,
                      textColor: AppColor.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 15),
                      child: state is SignUpInProgress
                          ? Center(
                              child: CircularProgressIndicator(
                                color: AppColor.white,
                              ),
                            )
                          : Text(
                              'SIGN UP',
                              style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
