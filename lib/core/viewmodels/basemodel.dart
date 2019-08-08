import 'package:flutter/widgets.dart';
import 'package:taskmanager/core/models/Enums.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Idle;
  ViewState get state => _state;
  void changeState(ViewState changingState) {
    _state = changingState;
    notifyListeners();
  }
}
