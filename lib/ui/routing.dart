import 'package:flutter/material.dart';
import 'package:taskmanager/ui/views/addtask.dart';
import 'package:taskmanager/ui/views/homeview.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomeView());
      case 'add_task':
        return MaterialPageRoute(builder: (_) => AddTaskView());
      case 'settings':
      // return MaterialPageRoute(builder: (_) => SettingView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}
