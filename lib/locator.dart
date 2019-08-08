import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:taskmanager/core/apiclient/TasksAPIClient.dart';
import 'package:taskmanager/core/services/DataServices.dart';
import 'package:taskmanager/core/viewmodels/basemodel.dart';
import 'package:taskmanager/core/viewmodels/cumodel.dart';
import 'package:taskmanager/core/viewmodels/homemodel.dart';

void initKiwi() {
  kiwi.Container()..registerFactory((c) => HomeModel());
  kiwi.Container()..registerFactory((c) => CUModel());
  kiwi.Container()..registerFactory((c) => DataServices());
  kiwi.Container()..registerFactory((c) => TasksAPIClient());
}
