import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/domain/model/course/course_request_model.dart';
import 'package:zignutspracticalflutter/domain/model/course/course_response_model.dart';
import 'package:zignutspracticalflutter/domain/model/home/home_response_model.dart';
import 'package:zignutspracticalflutter/domain/model/login/login_request_model.dart';
import 'package:zignutspracticalflutter/domain/model/login/login_response_model.dart';
import 'package:zignutspracticalflutter/domain/model/sign_up/sign_up_request_model.dart';
import 'package:zignutspracticalflutter/domain/model/sign_up/sign_up_response_model.dart';

class AuthenticationService {
  final baseUrl = 'https://oxygene.qkinnovations.com/backend/api/';
  final Dio _dio = Dio();

  Future<LoginResponseModel> login(LoginRequestModel loginRequestModel) async {
    Map<String, dynamic> request = {
      'email': loginRequestModel.email,
      'password': loginRequestModel.password,
      'device_token': loginRequestModel.deviceToken,
      'device_type': loginRequestModel.deviceType,
    };
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    final response =
        await _dio.post('${baseUrl}user/appLogin', queryParameters: request);
    LoginResponseModel responseModel = LoginResponseModel.fromJson(
      response.data,
    );
    return responseModel;
  }

  Future<SignUpResponseModel> signUp(
      SignUpRequestModel signUpRequestModel) async {
    Map<String, dynamic> request = {
      'email': signUpRequestModel.email,
      'password': signUpRequestModel.password,
      'device_token': signUpRequestModel.deviceToken,
      'device_type': signUpRequestModel.deviceType,
      'first_name': signUpRequestModel.firstName,
      'last_name': signUpRequestModel.lastName,
      'password_confirmation': signUpRequestModel.passwordConfirmation,
    };
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    final response = await _dio.post('${baseUrl}user/appRegistration',
        queryParameters: request);
    SignUpResponseModel responseModel = SignUpResponseModel.fromJson(
      response.data,
    );
    return responseModel;
  }

  Future<HomeResponseModel> fetchResorts() async {
    final String token = Dependency.sharedPreferences.getString('token') ?? '';
    print('toke to me as $token');
    Map<String, dynamic> headers = {
      'Authorization': 'Bearer $token',
    };
    _dio.options.headers = headers;
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    final response = await _dio.post(
      '${baseUrl}resort/list',
    );

    HomeResponseModel homeResponseModel =
        HomeResponseModel.fromJson(response.data);
    // print('got response as ${response.data}');

    return homeResponseModel;
  }

  Future<CourseResponseModel> fetchCourses(
      CourseRequestModel courseRequestModel) async {
    Map<String, dynamic> request = {
      'page': courseRequestModel.page,
      'perPage': courseRequestModel.perPage,
      'date_type': courseRequestModel.dateType,
      'is_app': courseRequestModel.isApp,
      'resort_id': courseRequestModel.resortId,

    };
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };
    final response = await _dio.post('${baseUrl}masters/getCustomerCourseApp',
        queryParameters: request);
    CourseResponseModel courseResponseModel = CourseResponseModel.fromJson(
      response.data,
    );

    print('got response as ${response.data}');
    return courseResponseModel;
  }
}
