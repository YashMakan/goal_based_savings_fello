import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/home/data/models/user_info.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_user_saved_details_usecase.dart';

part 'events.dart';

part 'states.dart';

class HomeGoalsBloc extends Bloc<HomeGoalsEvent, HomeGoalsState> {
  final FetchUserSavedDetailsUseCase fetchUserSavedDetailsUseCase;

  HomeGoalsBloc(this.fetchUserSavedDetailsUseCase)
      : super(HomeGoalsInitialState()) {
    on<FetchGoalsEvent>(fetchFelloUserSavedDetailsEvent);
  }

  Future<FutureOr<void>> fetchFelloUserSavedDetailsEvent(
      FetchGoalsEvent event,
      Emitter<HomeGoalsState> emit) async {
    emit(HomeGoalsLoadingState());
    final result = await fetchUserSavedDetailsUseCase(event.userId);
    result.fold((l) {
      emit(HomeGoalsErrorActionState());
    }, (r) {
      emit(HomeGoalsLoadedState(r));
    });
  }
}
