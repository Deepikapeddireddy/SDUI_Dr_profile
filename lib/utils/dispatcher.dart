import 'redux_model.dart';

DispatchModel dispatcher(String action, [dynamic payload]) {
  return DispatchModel(type: action, payload: payload);
}
