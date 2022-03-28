import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/models/experience_model.dart';
import 'package:en_dynamic_ui/widgets/doctor/Reviews.dart';
import 'package:en_dynamic_ui/widgets/dynamic/doctor_card_v1.dart';
import 'package:flutter/material.dart';

import '../doctor/doctor_profile.dart';

class EnDynamicParser extends StatelessWidget {
  final EnDynamicJson options;
  const EnDynamicParser({Key? key, required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (options.type == "column") {
      return ListView(
        key: UniqueKey(),
        children: [
          for (var v in options.model)
            enDynamicWidgetApplier[options.widget.name]!(
              v,
              options.widget.properties,
            )
        ],
      );
    }
    return Column(
      children: [
        for (var v in options.model)
          enDynamicWidgetApplier[options.widget.name]!(
            v,
            options.widget.properties,
          )
      ],
    );
  }
}

class EnDynamicJson {
  String type;
  dynamic model;
  EnDynamicWidgetJson widget;
  EnDynamicJson({
    required this.type,
    required this.model,
    required this.widget,
  });

  factory EnDynamicJson.fromJson(Map<String, dynamic> json) {
    return EnDynamicJson(
      type: json["type"],
      model: json["model"],
      widget: EnDynamicWidgetJson.fromJson(json["widget"]),
    );
  }
}

class EnDynamicWidgetJson {
  String name;
  dynamic properties;
  EnDynamicWidgetJson({
    required this.name,
    required this.properties,
  });

  factory EnDynamicWidgetJson.fromJson(Map<String, dynamic> json) {
    return EnDynamicWidgetJson(
      name: json["name"],
      properties: json["properties"],
    );
  }
}

Map<String, Function> enDynamicWidgetApplier = {
  "DoctorCardV1": (value, properties) {
    DoctorModel doctor = DoctorModel.fromJson(value);
    // DoctorExperienceModel exp = DoctorExperienceModel.fromJson(value);
    DoctorCardV1Properties doctorCardProperties =
        DoctorCardV1Properties.fromJson(properties);
    return DoctorCardV1(
      doctor: doctor,
      //exp: exp,
      cardProperties: doctorCardProperties,
    );
  },
  "Review": (value) {
    ReviewModel exp = ReviewModel.fromJson(value);

    return Review(exp: exp);
  },
  // "calls": (value, properties) {
  //   DoctorModel doctor = DoctorModel.fromJson(value);
  //   DoctorCardV2Properties cardProperties1 =
  //       DoctorCardV2Properties.fromJson(properties);
  //   return DoctorProfile(
  //     doctor: doctor,
  //     cardProperties1: cardProperties1,
  //   );
  // }
};
