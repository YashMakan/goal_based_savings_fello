import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_fello_balance_usecase.dart';

part 'events.dart';

part 'states.dart';

class HomeFelloBalanceBloc
    extends Bloc<HomeFelloBalanceEvent, HomeFelloBalanceState> {
  final FetchFelloBalanceUseCase fetchFelloBalanceUseCase;

  HomeFelloBalanceBloc(this.fetchFelloBalanceUseCase)
      : super(HomeFelloBalanceInitialState()) {
    on<FetchFelloBalanceEvent>(fetchFelloBalanceEvent);
  }

  Future<FutureOr<void>> fetchFelloBalanceEvent(
      FetchFelloBalanceEvent event, Emitter<HomeFelloBalanceState> emit) async {
    emit(HomeFelloBalanceLoadingState());
    final result = await fetchFelloBalanceUseCase(event.userId);
    result.fold((l) {
      emit(HomeFelloBalanceErrorActionState());
    }, (r) {
      emit(HomeFelloBalanceLoadedState(r));
    });
  }
}
