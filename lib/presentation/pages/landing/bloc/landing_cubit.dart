import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingState> {
  LandingCubit(TickerProvider vsync)
      : super(
          LandingInitial(
            TabController(length: 2, vsync: vsync),
          ),
        );
}
