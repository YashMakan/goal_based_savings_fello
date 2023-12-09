import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/data_sources/goal_save_data_source.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/domain/repository/goal_save_repository.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

class GoalSaveRepositoryImpl extends GoalSaveRepository {
  final GoalSaveDataSource goalSaveDataSource;

  GoalSaveRepositoryImpl(this.goalSaveDataSource);

  @override
  Future<Either<ErrorState, bool>> invest(InvestmentDetails details) async {
    return await ErrorHandler.callApi(() => goalSaveDataSource.invest(details),
        (result) {
      final res = result['result'];
      return (res as bool);
    });
  }
}
