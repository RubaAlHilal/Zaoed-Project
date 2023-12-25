import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  PagesBloc() : super(PagesInitial()) {
    on<PageNavigationEvent>(navigationSelect);
    on<PageOnboardingEvent>(onboardinSelect);
    on<PageTabBarEvent>(tabBarSelect);
    on<ChargingTimeEvent>(chargingTime);
    on<ChargingTypeEvent>(chargingType);
  }

  FutureOr<void> navigationSelect(
      PageNavigationEvent event, Emitter<PagesState> emit) {
    emit(PagesNavigationState(event.pageSelected));
  }

  FutureOr<void> onboardinSelect(
      PageOnboardingEvent event, Emitter<PagesState> emit) {
    emit(PageOnboardingState(event.selected));
  }

  FutureOr<void> tabBarSelect(PageTabBarEvent event, Emitter<PagesState> emit) {
    emit(PageTapBarState(event.selected));
  }

  FutureOr<void> chargingTime(
      ChargingTimeEvent event, Emitter<PagesState> emit) {
    emit(ChargingTimeState(event.selected));
  }

  FutureOr<void> chargingType(
      ChargingTypeEvent event, Emitter<PagesState> emit) {
    emit(ChargingTypeState(event.selected));
  }
}
