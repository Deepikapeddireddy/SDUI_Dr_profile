import 'dart:convert';

import 'package:en_dynamic_ui/makeApiCall.dart';
import 'package:en_dynamic_ui/middleware/main.dart';
import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/store/app_reducer.dart';
import 'package:en_dynamic_ui/utils/error.dart';
import 'package:en_dynamic_ui/utils/loading.dart';
import 'package:en_dynamic_ui/widgets/dynamic/doctor_card_v1.dart';
import 'package:en_dynamic_ui/widgets/dynamic/en_dynamic_parser.dart';
import 'package:en_dynamic_ui/widgets/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:en_dynamic_ui/store/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'store/app_state.dart';
import 'utils/redux_model.dart';

void main() {
  final _initialState = AppState.initialState();
  final _store =
      Store<AppState>(appReducer, initialState: _initialState, middleware: [
    thunkMiddleware,
  ]);
  runApp(MyApp(
    store: _store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({Key? key, required this.store}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Todo List'),
          ),
          body: DoctorListScreen(),
        ),
      ),
    );
  }
}
