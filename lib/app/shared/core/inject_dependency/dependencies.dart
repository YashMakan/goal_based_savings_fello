import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/data_sources/goal_save_data_source.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/repository_impl/goal_save_repository_impl.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/domain/usecases/invest_usecase.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/presentation/bloc/goal_save_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/data/data_sources/home_data_source.dart';
import 'package:goal_based_savings_fello/app/features/home/data/repository_impl/home_repository_impl.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_fello_balance_usecase.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_goals_usecase.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/usecases/fetch_user_saved_details_usecase.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_fello_balance_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_goals_bloc/bloc.dart';
import 'package:goal_based_savings_fello/app/features/home/presentation/bloc/home_user_info_bloc/bloc.dart';
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
