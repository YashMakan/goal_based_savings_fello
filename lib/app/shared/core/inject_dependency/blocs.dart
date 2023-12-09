part of 'dependencies.dart';

Future<void> injectBlocs() async {
  sl.registerSingleton(HomeGoalsBloc(sl()));
  sl.registerSingleton(HomeFelloBalanceBloc(sl()));

  sl.registerSingleton(GoalSaveBloc(sl()));
}
