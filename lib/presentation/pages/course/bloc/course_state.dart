part of 'course_cubit.dart';

@immutable
abstract class CourseState {}

class CourseInitial extends CourseState {}

class CourseInProgress extends CourseState {}

class CourseInSuccess extends CourseState {
  CourseInSuccess({required this.courseResponseModel});

  final CourseResponseModel courseResponseModel;
}

class CourseInFailure extends CourseState {}
