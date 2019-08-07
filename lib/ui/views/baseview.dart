import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kiwi/kiwi.dart' as kiwi;
import 'package:taskmanager/core/viewmodels/basemodel.dart';

class BaseView<T extends BaseModel> extends StatefulWidget {
  final Widget Function(BuildContext context, T model, Widget child) builder;
  final Function(T) onModelReady;

  BaseView({this.builder, this.onModelReady});

  @override
  _BaseViewState<T> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends BaseModel> extends State<BaseView<T>> {
  // T model = locator<T>();
  T model = kiwi.Container().resolve<T>();
  @override
  void initState() {
    if (widget.onModelReady != null) {
      widget.onModelReady(model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
        builder: (context) => model,
        child: Consumer<T>(builder: widget.builder));
  }
}
