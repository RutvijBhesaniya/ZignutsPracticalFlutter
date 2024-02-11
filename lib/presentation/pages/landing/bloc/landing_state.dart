part of 'landing_cubit.dart';

@immutable
abstract class LandingState {}

class LandingInitial extends LandingState {
  final TabController tabController;

  LandingInitial(this.tabController);
}
