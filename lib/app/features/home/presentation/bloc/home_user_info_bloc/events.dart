part of 'bloc.dart';

sealed class HomeGoalsEvent extends Equatable {
  const HomeGoalsEvent();

  @override
  List<Object> get props => [];
}

class FetchGoalsEvent extends HomeGoalsEvent {
  final int userId;

  const FetchGoalsEvent(this.userId);
}
