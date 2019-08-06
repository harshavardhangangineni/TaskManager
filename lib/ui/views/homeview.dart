import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskmanager/core/models/Task.dart';
import 'package:taskmanager/core/viewmodels/homemodel.dart';
import 'package:taskmanager/ui/shared/AppColors.dart';
import 'package:taskmanager/ui/shared/UIHelpers.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:taskmanager/ui/widgets/taskitem.dart';

import 'baseview.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var details = [
      Task("Harsha"),
      Task("Harsha"),
      Task("Harsha"),
      Task("Harsha")
    ];
    return ChangeNotifierProvider<HomeModel>(
      builder: (context) => kiwi.Container().resolve<HomeModel>(),
      child: BaseView<HomeModel>(
          onModelReady: (model) {},
          builder: (context, model, child) => SafeArea(
                  child: Scaffold(
                appBar: AppBar(
                  title: Text(UIHelper.AppTitle),
                  backgroundColor: PrimaryColor,
                ),
                body: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext buildContext, int index) =>
                      TaskItem(details[index]),
                ),
              ))),
    );
  }
}
