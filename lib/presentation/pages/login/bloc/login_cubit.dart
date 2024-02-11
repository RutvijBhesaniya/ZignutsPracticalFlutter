import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/domain/model/login/login_request_model.dart';
import 'package:zignutspracticalflutter/main.dart';
import 'package:zignutspracticalflutter/presentation/widgets/network_utils.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login(String email, String password) async {
      if (!await NetworkUtils.isAvailable()) {
      ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
        const SnackBar(
          content: Text('Please check Internet Conectivity'),
        ),
      );

      return;
    }

    final String deviceType = Platform.isAndroid ? 'A' : 'I';
    final LoginRequestModel loginRequestModel =
        LoginRequestModel(email, password, 'sample', deviceType);
    emit(
      LoginInProgress(),
    );
    try {
      final response =
          await Dependency.authenticationService.login(loginRequestModel);
      Dependency.sharedPreferences.setString('token', response.data?.token ?? "");
      emit(LoginInSuccess());
      print('got the response ${response.message}');
    } on Exception catch (e) {
      emit(LoginInFailure());
    }
  }
}
