part of 'bloc.dart';

@immutable
sealed class GoalSaveState extends Equatable {
  const GoalSaveState();

  @override
  List<Object> get props => [];
}

class GoalSaveActionState extends GoalSaveState {}

class GoalSaveInitialState extends GoalSaveState {}

class GoalSaveLoadingState extends GoalSaveState {}

class GoalSaveLoadedState extends GoalSaveState {
  final bool loaded;

  const GoalSaveLoadedState(this.loaded);
}

class GoalSaveErrorActionState extends GoalSaveActionState {}
