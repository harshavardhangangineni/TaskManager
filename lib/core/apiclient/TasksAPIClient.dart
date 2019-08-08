import 'package:dio/dio.dart';
import 'package:taskmanager/core/helpers/Constants.dart';

class TasksAPIClient {
  final Dio _dio = Dio();

  Future<Response> getTasks() async {
    return await _dio.get(Constants.ApiEndpoint + Constants.GetTasks);
  }
}
