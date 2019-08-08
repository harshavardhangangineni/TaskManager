import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:taskmanager/core/Helpers/Constants.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:taskmanager/core/apiclient/TasksAPIClient.dart';
import 'package:taskmanager/core/models/Task.dart';

class DataServices {
  final Dio _dio = Dio();
  List<Task> tasks;
  var taskApiClient = kiwi.Container().resolve<TasksAPIClient>();

  Future<List<Task>> getTaskService() async {
    Response resp = await taskApiClient.getTasks();
    var list = jsonDecode(resp.data);
    List<Task> data =
        list[0].map((object) => Task.fromJson(object)).cast<Task>().toList();
    return data;
  }
}
