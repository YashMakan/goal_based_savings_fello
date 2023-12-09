part of 'bloc.dart';

@immutable
sealed class HomeUserInfoState extends Equatable {
  const HomeUserInfoState();

  @override
  List<Object> get props => [];
}

class HomeUserInfoActionState extends HomeUserInfoState {}

class HomeUserInfoInitialState extends HomeUserInfoState {}

class HomeUserInfoLoadingState extends HomeUserInfoState {}

class HomeUserInfoLoadedState extends HomeUserInfoState {
  final UserInfo userInfo;

  const HomeUserInfoLoadedState(this.userInfo);
}

class HomeUserInfoErrorActionState extends HomeUserInfoActionState {}
