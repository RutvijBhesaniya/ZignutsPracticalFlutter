import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:zignutspracticalflutter/common/dependency.dart';
import 'package:zignutspracticalflutter/domain/model/course/course_request_model.dart';
import 'package:zignutspracticalflutter/domain/model/course/course_response_model.dart';
import 'package:zignutspracticalflutter/main.dart';
import 'package:zignutspracticalflutter/presentation/widgets/network_utils.dart';

part 'course_state.dart';

class CourseCubit extends Cubit<CourseState> {
  CourseCubit() : super(CourseInitial());

  Future<void> courseDetails(
    int page,
    int perPage,
    String dateType,
    int isApp,
    int resortId,
  ) async {

    if (!await NetworkUtils.isAvailable()) {
      ScaffoldMessenger.of(navigatorKey.currentState!.context).showSnackBar(
        const SnackBar(
          content: Text('Please check Internet Conectivity'),
        ),
      );

      return;
    }

    final CourseRequestModel courseRequestModel = CourseRequestModel(
      page: 1,
      perPage: 20,
      dateType: "Past",
      isApp: 1,
      resortId: resortId,
    );
    emit(CourseInProgress());
    try {
      final response = await Dependency.authenticationService
          .fetchCourses(courseRequestModel);
      emit(
        CourseInSuccess(courseResponseModel: response),
      );
      print('got the response121 ${response.message}');
    } on Exception catch (e) {
      emit(CourseInFailure());
    }
  }
}
