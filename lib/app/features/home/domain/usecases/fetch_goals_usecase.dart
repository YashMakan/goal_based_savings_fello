import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:goal_based_savings_fello/app/features/home/data/repository_impl/home_repository_impl.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

class FetchGoalsUseCase {
  final HomeRepositoryImpl homeRepository;

  FetchGoalsUseCase(this.homeRepository);

  Future<Either<ErrorState, List<InvestmentDetails>>> call(int userId) async {
    return await homeRepository.fetchGoals(userId);
  }
}
