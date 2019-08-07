import 'package:flutter/material.dart';
import 'package:taskmanager/core/models/Task.dart';

class TaskItem extends StatelessWidget {
  Task item;
  TaskItem(this.item);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(item.name),
          subtitle: Text(item.name),
        ),
        Divider()
      ],
    );
  }
}
