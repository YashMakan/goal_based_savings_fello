part of 'bloc.dart';

sealed class HomeFelloBalanceEvent extends Equatable {
  const HomeFelloBalanceEvent();

  @override
  List<Object> get props => [];
}

class FetchFelloBalanceEvent extends HomeFelloBalanceEvent {
  final int userId;

  const FetchFelloBalanceEvent(this.userId);
}
