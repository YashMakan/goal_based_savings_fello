part of 'bloc.dart';

sealed class GoalSaveEvent extends Equatable {
  const GoalSaveEvent();

  @override
  List<Object> get props => [];
}

class InvestEvent extends GoalSaveEvent {
  final InvestmentDetails details;

  const InvestEvent(this.details);
}
