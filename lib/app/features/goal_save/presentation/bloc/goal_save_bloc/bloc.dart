import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/domain/usecases/invest_usecase.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_goals_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/shared/config/constants/constants.dart';

import '../../../../../shared/core/inject_dependency/dependencies.dart';

part 'events.dart';

part 'states.dart';

class GoalSaveBloc extends Bloc<GoalSaveEvent, GoalSaveState> {
  final InvestUseCase investUseCase;

  GoalSaveBloc(this.investUseCase) : super(GoalSaveInitialState()) {
    on<InvestEvent>(investEvent);
  }

  Future<FutureOr<void>> investEvent(
      InvestEvent event, Emitter<GoalSaveState> emit) async {
    emit(GoalSaveLoadingState());
    final result = await investUseCase(event.details);
    result.fold((l) {
      emit(GoalSaveErrorActionState());
    }, (r) {
      emit(GoalSaveLoadedState(r));
      sl<HomeGoalsBloc>().add(const FetchGoalsEvent(Constants.userId));
    });
  }
}
