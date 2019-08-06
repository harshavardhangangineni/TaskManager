import 'package:kiwi/kiwi.dart' as kiwi;
import 'core/viewmodels/homemodel.dart';

void initKiwi() {
  kiwi.Container()..registerFactory((c) => HomeModel());
}
