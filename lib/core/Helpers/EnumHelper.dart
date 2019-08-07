import 'package:flutter/foundation.dart';

String GetNameOfEnum(Object enumValue) {
  List<String> val = enumValue.toString().split('.');
  return val[val.length - 1];
}
