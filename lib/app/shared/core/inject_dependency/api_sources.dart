part of 'dependencies.dart';

Future<void> injectApiSources() async {
  sl.registerSingleton(HomeDataSource(sl()));
  sl.registerSingleton(GoalSaveDataSource(sl()));
}
