import 'package:en_dynamic_ui/actions/main.dart';
import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/models/experience_model.dart';
import 'package:en_dynamic_ui/store/app_state.dart';
import 'package:en_dynamic_ui/utils/redux_model.dart';

DoctorsListState doctorListReducer(DoctorsListState prevState, dynamic action) {
  DoctorsListState newState = DoctorsListState.fromAnotherState(prevState);
  String type = (action as DispatchModel).type;
  dynamic payload = (action as DispatchModel).payload;
  switch (type) {
    case Actions.GET_DOCTORS_LIST_REQ:
      return newState
        ..list.loading = true
        ..list.error = null;
    case Actions.GET_DOCTORS_LIST_SUCCESS:
      return newState
        ..list.loading = false
        ..list.data = payload;
    case Actions.GET_DOCTORS_LIST_FAILED:
      return newState
        ..list.loading = false
        ..list.error = "failed to get doctors list";
    default:
      return newState;
  }
}

DoctorsReviewsState doctorReviewsReducer(
    DoctorsReviewsState prevState, dynamic action) {
  DoctorsReviewsState newState = DoctorsReviewsState.fromAnotherState(prevState);
  String type = (action as DispatchModel).type;
  dynamic payload = (action as DispatchModel).payload;
  switch (type) {
    case Actions.GET_REVIEWS_REQ:
      return newState
        ..list.loading = true
        ..list.error = null;
    case Actions.GET_REVIEWS_SUCCESS:
      return newState
        ..list.loading = false
        ..list.data = payload;
    case Actions.GET_REVIEWS_FAILED:
      return newState
        ..list.loading = false
        ..list.error = "failed to get doctors reviews";
    default:
      return newState;
  }
}
