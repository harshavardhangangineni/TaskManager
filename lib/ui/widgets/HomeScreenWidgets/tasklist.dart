import 'package:flutter/material.dart';
import 'package:taskmanager/core/models/Task.dart';
import 'package:taskmanager/ui/widgets/HomeScreenWidgets/taskitem.dart';

class GenricList<T> extends StatelessWidget {
  List<T> data;
  GenricList(this.data);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext buildContext, int index) {
            switch (T) {
              case Task:
                return TaskItem(data[index] as Task);
            }
          }),
    );
  }
}
