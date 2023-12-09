part of 'bloc.dart';

sealed class GoalsEvent extends Equatable {
  const GoalsEvent();

  @override
  List<Object> get props => [];
}

class FetchGoalsEvent extends GoalsEvent {
  final int userId;

  const FetchGoalsEvent(this.userId);
}
