import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

abstract class GoalSaveRepository {
  Future<Either<ErrorState, bool>> invest(InvestmentDetails details);
}