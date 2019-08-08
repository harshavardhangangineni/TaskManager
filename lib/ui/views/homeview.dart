import 'package:flutter/material.dart';
import 'package:taskmanager/core/Helpers/EnumHelper.dart';
import 'package:taskmanager/core/models/Enums.dart';
import 'package:taskmanager/core/models/Task.dart';
import 'package:taskmanager/core/viewmodels/homemodel.dart';
import 'package:taskmanager/ui/shared/UIHelpers.dart';
import 'package:taskmanager/ui/widgets/HomeScreenWidgets/tasklist.dart';
import 'baseview.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      onModelReady: (model) {
        model.getTasks();
      },
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(UIHelper.AppTitle),
          ),
          body: GenricList<Task>(model.taskList, model.state),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.pushNamed(context, 'add_task');
            },
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.av_timer),
                  title: Text(GetNameOfEnum(TaskStatus.New))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment_late),
                  title: Text(GetNameOfEnum(TaskStatus.InProgress))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.assignment_turned_in),
                  title: Text(GetNameOfEnum(TaskStatus.Completed)))
            ],
          ),
        ),
      ),
    );
  }
}
