import 'dart:async';

import 'package:flutter/material.dart';
import 'package:taskmanager/locator.dart';
import 'package:taskmanager/ui/routing.dart';
import 'package:taskmanager/ui/views/homeview.dart';

void main() {
  runZoned(() {
    initKiwi();
  }, onError: (error, stackTrace) {
    print('Uncaught error: $error');
  });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'montesserat',
        primarySwatch: Colors.blue,
      ),
      home: HomeView(),
      onGenerateRoute: Router.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
