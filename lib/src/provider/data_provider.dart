import 'package:flutter/cupertino.dart';

import 'data_model.dart';
import 'package:flutter/material.dart';

class DataProvider extends InheritedWidget {
  final DataModel dataModel;

  DataProvider({this.dataModel, Key key, Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static DataModel of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<DataProvider>())
        .dataModel;
  }
}
