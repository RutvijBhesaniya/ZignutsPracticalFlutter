import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/domain/model/home/home_response_model.dart';
import 'package:zignutspracticalflutter/main.dart';
import 'package:zignutspracticalflutter/presentation/widgets/network_utils.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial()) {
    home();
  }

  Future<void> home() async {
    if (!await NetworkUtils.isAvailable()) {
      ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
        const SnackBar(
          content: Text('Please check Internet Conectivity'),
        ),
      );

      return;
    }
    final String token = Dependency.sharedPreferences.getString('token') ?? '';
    // final String deviceType = Platform.isAndroid ? 'A' : 'I';
    // final LoginRequestModel loginRequestModel =
    // LoginRequestModel(email, password, 'sample', deviceType);
    emit(HomeInProgress());
    try {
      final response = await Dependency.authenticationService.fetchResorts();
      Dependency.sharedPreferences.getString(
            'token',
          ) ??
          "";
      emit(HomeInSuccess(
        homeResponseModel: response,
      ));
      print('got the response ${response.message}');
    } on Exception catch (e) {
      emit(HomeInFailure());
    }
  }
}
