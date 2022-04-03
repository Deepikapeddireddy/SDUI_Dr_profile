import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/models/experience_model.dart';

class AppState {
  DoctorsListState doctorsListState;
  DoctorsReviewsState doctorReviews;
  AppState({required this.doctorsListState, required this.doctorReviews});
  AppState.initialState()
      : doctorsListState = DoctorsListState.initialState(),
        doctorReviews = DoctorsReviewsState.initialState();
  factory AppState.fromAnotherState(AppState another) {
    return AppState(
        doctorsListState: another.doctorsListState,
        doctorReviews: another.doctorReviews);
  }
}
