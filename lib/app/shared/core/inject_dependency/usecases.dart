part of 'dependencies.dart';

Future<void> injectUseCases() async {
  sl.registerSingleton(FetchUserSavedDetailsUseCase(sl()));
  sl.registerSingleton(FetchFelloBalanceUseCase(sl()));
  sl.registerSingleton(InvestUseCase(sl()));
}
