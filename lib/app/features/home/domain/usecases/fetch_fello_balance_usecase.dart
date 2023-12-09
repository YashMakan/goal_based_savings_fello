import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/home/data/repository_impl/home_repository_impl.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

class FetchFelloBalanceUseCase {
  final HomeRepositoryImpl homeRepository;

  FetchFelloBalanceUseCase(this.homeRepository);

  Future<Either<ErrorState, double>> call(int userId) async {
    return await homeRepository.fetchFelloBalance(userId);
  }
}
