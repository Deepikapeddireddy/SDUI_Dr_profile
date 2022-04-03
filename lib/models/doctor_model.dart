import 'package:en_dynamic_ui/utils/redux_model.dart';

class DoctorModel {
  final String fullName;
  final String speciality;
  final String likes;
  final String experience;
  final String review;
  final String post;
  final bool audioIcon;
  final bool videoIcon;
  final String line1;
  final String line2;

  DoctorModel(
      {required this.fullName,
      required this.speciality,
      required this.likes,
      required this.experience,
      required this.review,
      required this.post,
      required this.audioIcon,
      required this.videoIcon,
      required this.line1,
      required this.line2});

  DoctorModel.initialState()
      : fullName = "",
        speciality = "",
        likes = "",
        experience = "",
        review = "",
        post = '',
        line1 = "",
        line2 = '',
        audioIcon = false,
        videoIcon = false;

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return DoctorModel(
        fullName: json["fullName"] ?? "",
        speciality: json["speciality"] ?? "",
        likes: json["likes"] ?? "",
        experience: json["experience"] ?? "",
        review: json["review"] ?? "",
        post: json["post"] ?? "",
        line1: json["line1"] ?? "",
        line2: json["line2"] ?? "",
        audioIcon: json["audioIcon"],
        videoIcon: json["videoIcon"]);
  }
}

class DoctorsListState {
  ReduxModel list;
  DoctorsListState({required this.list});
  DoctorsListState.initialState() : list = ReduxModel.initialState();
  factory DoctorsListState.fromAnotherState(DoctorsListState another) {
    return DoctorsListState(list: another.list);
  }
}
