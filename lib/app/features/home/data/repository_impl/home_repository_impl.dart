import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/home/data/data_sources/home_data_source.dart';
import 'package:goal_based_savings_fello/app/features/home/data/models/user_info.dart';
import 'package:goal_based_savings_fello/app/features/home/domain/repository/home_repository.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeDataSource homeDataSource;

  HomeRepositoryImpl(this.homeDataSource);

  @override
  Future<Either<ErrorState, double>> fetchFelloBalance(int userId) async {
    return await ErrorHandler.callApi(
        () => homeDataSource.fetchFelloBalance(userId), (result) {
      final res = result['result'];
      return (res as double);
    });
  }

  @override
  Future<Either<ErrorState, UserInfo>> fetchUserSavedDetails(int userId) async {
    return await ErrorHandler.callApi(
        () => homeDataSource.fetchUserSavedDetails(userId), (result) {
      final res = result['result'];
      return UserInfo.fromJson(res);
    });
  }
}
