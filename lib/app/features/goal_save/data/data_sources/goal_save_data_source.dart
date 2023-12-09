import 'package:dio/dio.dart';
import 'package:goal_based_savings_fello/app/features/goal_save/data/models/investment_details.dart';
import 'package:retrofit/retrofit.dart';

part 'goal_save_data_source.g.dart';

@RestApi()
abstract class GoalSaveDataSource {
  factory GoalSaveDataSource(Dio dio) = _GoalSaveDataSource;

  @POST('/v1/add-invest-data')
  Future<HttpResponse> invest(@Body() InvestmentDetails details);
}
