import 'package:flutter/material.dart';
import 'package:taskmanager/core/models/Task.dart';
import 'package:taskmanager/core/viewmodels/cumodel.dart';
import 'package:taskmanager/ui/shared/AppFonts.dart';
import 'package:taskmanager/ui/shared/UIHelpers.dart';
import 'package:taskmanager/ui/views/baseview.dart';
import 'package:taskmanager/ui/widgets/AddTaskWidgets/addorupdateformwidget.dart';

class AddTaskView extends StatefulWidget {
  AddTaskView({Key key}) : super(key: key);

  _AddTaskViewState createState() => _AddTaskViewState();
}

class _AddTaskViewState extends State<AddTaskView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<CUModel>(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(UIHelper.AppTitle),
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                UIHelper.AddTaskTitle,
                style: headerStyle,
              ),
              Divider(),
              Expanded(
                child: AddorEditForm(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
