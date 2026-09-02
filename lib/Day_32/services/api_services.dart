import 'package:dio/dio.dart';
import 'package:flutter_application_1/Day_32/model/post_models.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_services.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/posts')
  Future<List<PostModels>> getAllPosts();
}
