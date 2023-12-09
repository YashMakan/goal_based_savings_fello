import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:goal_based_savings_fello/app/shared/core/interceptors/dio_interceptor.dart';

part 'api_sources.dart';
part 'blocs.dart';
part 'repositories.dart';
part 'usecases.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  sl.registerSingleton<Dio>(customDio());
  injectApiSources();
  injectRepositories();
  injectUseCases();
  injectBlocs();
}
