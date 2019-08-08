import 'package:taskmanager/core/models/Enums.dart';
import 'package:taskmanager/core/models/Task.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:taskmanager/core/services/DataServices.dart';
import 'basemodel.dart';

class HomeModel extends BaseModel {
  DataServices _dataservice = kiwi.Container().resolve<DataServices>();
  var taskList;
  Future<void> getTasks() async {
    changeState(ViewState.Busy);
    taskList = await _dataservice.getTaskService();
    changeState(ViewState.Idle);
    notifyListeners();
    return taskList;
  }
}
