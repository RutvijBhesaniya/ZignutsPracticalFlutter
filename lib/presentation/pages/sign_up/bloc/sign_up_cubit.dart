import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/domain/model/sign_up/sign_up_request_model.dart';
import 'package:zignutspracticalflutter/main.dart';
import 'package:zignutspracticalflutter/presentation/widgets/network_utils.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<void> signUp(
    String email,
    String password,
    String passwordConfirmation,
    String firstName,
    String lastName,
  ) async {
    if (!await NetworkUtils.isAvailable()) {
      ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
        const SnackBar(
          content: Text('Please check Internet Conectivity'),
        ),
      );

      return;
    }
    final String deviceType = Platform.isAndroid ? 'A' : 'I';
    final SignUpRequestModel signUpRequestModel = SignUpRequestModel(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
      deviceToken: 'sample',
      passwordConfirmation: passwordConfirmation,
      deviceType: deviceType,
    );
    emit(SignUpInProgress());
    try {
      final response =
          await Dependency.authenticationService.signUp(signUpRequestModel);
      emit(
        SignUpSuccess(),
      );
    } on Exception catch (e) {
      emit(
        SignUpFailure(),
      );
    }
  }
}
