import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:taskmanager/core/viewmodels/basemodel.dart';
import 'package:taskmanager/core/viewmodels/cumodel.dart';
import 'package:taskmanager/core/viewmodels/homemodel.dart';

void initKiwi() {
  kiwi.Container()..registerFactory((c) => HomeModel());
  kiwi.Container()..registerFactory((c) => CUModel());
}
