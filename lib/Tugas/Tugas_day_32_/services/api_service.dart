import 'package:dio/dio.dart';
import 'package:flutter_application_1/Tugas/Tugas_day_32_/model/post_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com')
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET('/products')
  Future<Welcome> getAllProducts();
}
