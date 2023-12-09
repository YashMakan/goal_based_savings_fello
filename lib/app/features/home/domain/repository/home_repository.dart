import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/home/data/models/user_info.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

abstract class HomeRepository {
  Future<Either<ErrorState, double>> fetchFelloBalance(int userId);

  Future<Either<ErrorState, UserInfo>> fetchUserSavedDetails(int userId);
}