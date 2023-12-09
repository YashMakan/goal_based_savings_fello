part of 'bloc.dart';

@immutable
sealed class HomeGoalsState extends Equatable {
  const HomeGoalsState();

  @override
  List<Object> get props => [];
}

class HomeGoalsActionState extends HomeGoalsState {}

class HomeGoalsInitialState extends HomeGoalsState {}

class HomeGoalsLoadingState extends HomeGoalsState {}

class HomeGoalsLoadedState extends HomeGoalsState {
  final List<InvestmentDetails> detailsList;

  const HomeGoalsLoadedState(this.detailsList);
}

class HomeGoalsErrorActionState extends HomeGoalsActionState {}
