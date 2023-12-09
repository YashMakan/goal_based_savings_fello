import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/home/data/models/user_info.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_user_saved_details_usecase.dart';

part 'events.dart';

part 'states.dart';

class HomeGoalsBloc extends Bloc<HomeUserInfoEvent, HomeUserInfoState> {
  final FetchUserSavedDetailsUseCase fetchUserSavedDetailsUseCase;

  HomeGoalsBloc(this.fetchUserSavedDetailsUseCase)
      : super(HomeUserInfoInitialState()) {
    on<FetchFelloUserSavedDetailsEvent>(fetchFelloUserSavedDetailsEvent);
  }

  Future<FutureOr<void>> fetchFelloUserSavedDetailsEvent(
      FetchFelloUserSavedDetailsEvent event,
      Emitter<HomeUserInfoState> emit) async {
    emit(HomeUserInfoLoadingState());
    final result = await fetchUserSavedDetailsUseCase(event.userId);
    result.fold((l) {
      emit(HomeUserInfoErrorActionState());
    }, (r) {
      emit(HomeUserInfoLoadedState(r));
    });
  }
}
