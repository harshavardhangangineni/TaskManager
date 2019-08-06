import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kiwi/kiwi.dart' as kiwi;

class BaseView<T extends ChangeNotifier> extends StatefulWidget {
  final Widget Function(BuildContext context, T value, Widget child) builder;
  final Function(T) onModelReady;
  BaseView({@required this.builder, this.onModelReady});
  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView<T>> {
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
      builder: (context) => kiwi.Container().resolve<T>(),
      child: Consumer<T>(
        builder: widget.builder,
      ),
    );
  }
}
