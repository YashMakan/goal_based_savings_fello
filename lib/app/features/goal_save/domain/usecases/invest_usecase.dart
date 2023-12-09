import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/repository_impl/goal_save_repository_impl.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

class InvestUseCase {
  final GoalSaveRepositoryImpl goalRepository;

  InvestUseCase(this.goalRepository);

  Future<Either<ErrorState, bool>> call(InvestmentDetails details) async {
    return await goalRepository.invest(details);
  }
}
