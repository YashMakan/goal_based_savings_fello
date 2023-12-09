import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home_data_source.g.dart';

@RestApi()
abstract class HomeDataSource {
  factory HomeDataSource(Dio dio) = _HomeDataSource;

  @POST('/v1/')
  Future<HttpResponse> fetchFelloBalance(@Field("user_id") int userId);

  @POST('/v1/')
  Future<HttpResponse> fetchUserSavedDetails(@Field("user_id") int userId);
}
