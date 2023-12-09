part of 'bloc.dart';

@immutable
sealed class HomeFelloBalanceState extends Equatable {
  const HomeFelloBalanceState();

  @override
  List<Object> get props => [];
}

class HomeFelloBalanceActionState extends HomeFelloBalanceState {}

class HomeFelloBalanceInitialState extends HomeFelloBalanceState {}

class HomeFelloBalanceLoadingState extends HomeFelloBalanceState {}

class HomeFelloBalanceLoadedState extends HomeFelloBalanceState {
  final double balance;

  const HomeFelloBalanceLoadedState(this.balance);
}

class HomeFelloBalanceErrorActionState extends HomeFelloBalanceActionState {}
