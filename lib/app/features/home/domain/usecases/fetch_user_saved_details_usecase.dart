import 'package:dartz/dartz.dart';
import 'package:goal_based_savings_fello/app/features/home/data/models/user_info.dart';
import 'package:goal_based_savings_fello/app/features/home/data/repository_impl/home_repository_impl.dart';
import 'package:goal_based_savings_fello/app/shared/core/error_handler/error_handler.dart';

class FetchUserSavedDetailsUseCase {
  final HomeRepositoryImpl homeRepository;

  FetchUserSavedDetailsUseCase(this.homeRepository);

  Future<Either<ErrorState, UserInfo>> call(int userId) async {
    return await homeRepository.fetchUserSavedDetails(userId);
  }
}
