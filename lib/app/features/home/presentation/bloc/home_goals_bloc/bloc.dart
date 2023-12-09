import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/home/data/models/user_info.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_goals_usecase.dart';

part 'events.dart';

part 'states.dart';

class HomeGoalsBloc extends Bloc<GoalsEvent, HomeGoalsState> {
  final FetchGoalsUseCase fetchGoalsUseCase;

  HomeGoalsBloc(this.fetchGoalsUseCase) : super(HomeGoalsInitialState()) {
    on<FetchGoalsEvent>(fetchGoalsEvent);
  }

  Future<FutureOr<void>> fetchGoalsEvent(
      FetchGoalsEvent event, Emitter<HomeGoalsState> emit) async {
    emit(HomeGoalsLoadingState());
    final result = await fetchGoalsUseCase(event.userId);
    result.fold((l) {
      emit(HomeGoalsErrorActionState());
    }, (r) {
      emit(HomeGoalsLoadedState(r));
    });
  }
}
