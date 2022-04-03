import 'package:en_dynamic_ui/reducers/main.dart';
import 'package:en_dynamic_ui/store/app_state.dart';

AppState appReducer(AppState prevState, dynamic action) {
  return AppState(
      doctorsListState: doctorListReducer(prevState.doctorsListState, action),
      doctorReviews: doctorReviewsReducer(prevState.doctorReviews, action));
}
