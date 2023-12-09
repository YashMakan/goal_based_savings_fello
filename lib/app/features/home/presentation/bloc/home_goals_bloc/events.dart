part of 'bloc.dart';

sealed class GoalsEvent extends Equatable {
  const GoalsEvent();

  @override
  List<Object> get props => [];
}

class FetchUserGoalsEvent extends GoalsEvent {
  final int userId;

  const FetchUserGoalsEvent(this.userId);
}
