import 'package:flutter/cupertino.dart';

class ReduxModel {
  bool loading;
  dynamic data;
  String? error;

  ReduxModel({required this.loading, required this.data, required this.error});

  ReduxModel.initialState()
      : loading = false,
        data = {},
        error = null;
}

class DispatchModel {
  String type;
  dynamic payload;
  DispatchModel({required this.type, required this.payload});
}
