import 'package:flutter/material.dart';
import 'package:taskmanager/core/models/Enums.dart';
import 'package:taskmanager/core/models/Task.dart';
import 'package:taskmanager/ui/widgets/HomeScreenWidgets/taskitem.dart';

class GenricList<T> extends StatelessWidget {
  List<T> data;
  ViewState isDataLoading;
  GenricList(this.data, this.isDataLoading);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ViewState.values[isDataLoading.index] != ViewState.Busy
          ? ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext buildContext, int index) {
                switch (T) {
                  case Task:
                    return TaskItem(data[index] as Task);
                }
              })
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
