import 'package:flutter/cupertino.dart';

class Task {
  String _title, _subTitle, _dueDate, _dueTime;
  String get Title => _title;
  String get SubTitle => _subTitle;
  String get DueDate => _dueDate;
  String get DueTime => _dueTime;
  Task(this._title, this._subTitle, this._dueDate, this._dueTime);
  Task.fromJson(Map<String, dynamic> json)
      : _title = json["title"],
        _subTitle = json["subTitle"];
}
