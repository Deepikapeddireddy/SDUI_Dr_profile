import 'package:en_dynamic_ui/actions/main.dart';
import 'package:en_dynamic_ui/makeApiCall.dart';
import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/store/app_state.dart';
import 'package:en_dynamic_ui/utils/dispatcher.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

final HTTPService _httpService = HTTPService();

ThunkAction<AppState> getDoctorsList() {
  return (Store<AppState> store) async {
    try {
      store.dispatch(dispatcher(Actions.GET_DOCTORS_LIST_REQ));
      var response = await _httpService.getRequest(
          url:
              "https://us-central1-soundheart-dev-94cc1.cloudfunctions.net/api/template/get_users?type=column");
      return store
          .dispatch(dispatcher(Actions.GET_DOCTORS_LIST_SUCCESS, response));
    } catch (e) {
      String err = "failed to get doctors";
      return store.dispatch(dispatcher(Actions.GET_DOCTORS_LIST_FAILED, err));
    }
  };
}

ThunkAction<AppState> getReviews() {
  return (Store<AppState> store) async {
    try {
      store.dispatch(dispatcher(Actions.GET_REVIEWS_REQ));
      var response = await _httpService.getRequest(
          url:
              "https://us-central1-soundheart-dev-94cc1.cloudfunctions.net/api/template/get_reviews?type=column");
      return store.dispatch(dispatcher(Actions.GET_REVIEWS_SUCCESS, response));
    } catch (e) {
      String err = "failed to get reviews";
      return store.dispatch(dispatcher(Actions.GET_REVIEWS_FAILED, err));
    }
  };
}
