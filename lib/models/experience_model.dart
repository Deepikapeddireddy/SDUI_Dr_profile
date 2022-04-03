import 'package:en_dynamic_ui/constants/colors.dart';
import 'package:en_dynamic_ui/utils/redux_model.dart';
import 'package:flutter/cupertino.dart';

class ReviewModel {
  final String name;
  final String date;
  final String review;

  ReviewModel({required this.name, required this.date, required this.review});

  ReviewModel.initialState()
      : name = "",
        date = "",
        review = "";

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
        name: json["name"], date: json["date"], review: json["review"]);
  }
}

class DoctorsReviewsState {
  ReduxModel list;
  DoctorsReviewsState({required this.list});
  DoctorsReviewsState.initialState() : list = ReduxModel.initialState();
  factory DoctorsReviewsState.fromAnotherState(DoctorsReviewsState another) {
    return DoctorsReviewsState(list: another.list);
  }
}