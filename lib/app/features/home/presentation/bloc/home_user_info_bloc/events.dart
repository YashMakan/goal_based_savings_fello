part of 'bloc.dart';

sealed class HomeUserInfoEvent extends Equatable {
  const HomeUserInfoEvent();

  @override
  List<Object> get props => [];
}

class FetchFelloUserSavedDetailsEvent extends HomeUserInfoEvent {
  final int userId;

  const FetchFelloUserSavedDetailsEvent(this.userId);
}
