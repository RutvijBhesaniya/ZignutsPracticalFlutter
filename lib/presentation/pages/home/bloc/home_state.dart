part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeInProgress extends HomeState {}

class HomeInSuccess extends HomeState {
  HomeInSuccess({
    required this.homeResponseModel,
  });
  final HomeResponseModel homeResponseModel;
}

class HomeInFailure extends HomeState {}
