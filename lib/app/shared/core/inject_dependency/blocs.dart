part of 'dependencies.dart';

Future<void> injectBlocs() async {
  sl.registerSingleton(HomeUserInfoBloc(sl()));
  sl.registerSingleton(HomeFelloBalanceBloc(sl()));

  sl.registerSingleton(GoalSaveBloc(sl()));
  sl.registerSingleton(HomeGoalsBloc(sl()));
}
