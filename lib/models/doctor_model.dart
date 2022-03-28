class DoctorModel {
  final String fullName;
  final String speciality;
  final String likes;
  final String experience;
  final String review;
  final String post;
  final bool audioIcon;
  final bool videoIcon;

  DoctorModel(
      {required this.fullName,
      required this.speciality,
      required this.likes,
      required this.experience,
      required this.review,
      required this.post,
      required this.audioIcon,
      required this.videoIcon});

  DoctorModel.initialState()
      : fullName = "",
        speciality = "",
        likes = "",
        experience = "",
        review = "",
        post = '',
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
        audioIcon: json["audioIcon"],
        videoIcon: json["videoIcon"]);
  }
}
