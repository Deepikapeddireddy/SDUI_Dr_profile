// ignore_for_file: avoid_unnecessary_containers

import 'package:en_dynamic_ui/models/doctor_model.dart';
import 'package:en_dynamic_ui/widgets/dynamic/en_dynamic_parser.dart';
import 'package:flutter/material.dart';

import '../../constants/borders.dart';
import '../../constants/colors.dart';
import '../../constants/radii.dart';
import '../../constants/strings.dart';
import '../../constants/styles.dart';
import '../../main.dart';
import '../../models/experience_model.dart';

class DoctorProfile extends StatelessWidget {
  final DoctorModel doctor;
  final DoctorCardV2Properties? cardProperties1;
  DoctorProfile({
    Key? key,
    required this.doctor,
    this.cardProperties1,
  }) : super(key: key);
  dynamic optionsFromServer1 = EnDynamicJson.fromJson({
    "type": "column",
    "model": [
      {
        "name": "harika",
        "date": "20/2/2002",
        "review": "Happy with the treatement.",
      },
      {
        "name": "harika",
        "date": "20/2/2002",
        "review": "Happy with the treatement.",
      },
      {
        "name": "harika",
        "date": "20/2/2002",
        "review": "Happy with the treatement.",
      },
      {
        "name": "harika",
        "date": "20/2/2002",
        "review": "Happy with the treatement.",
      },
      {
        "name": "harika",
        "date": "20/2/2002",
        "review": "Happy with the treatement.",
      },
      {
        "name": "harika",
        "date": "20/2/2002",
        "review": "Happy with the treatement.",
      },
    ],
    "widget": {"name": "Review"}
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.appBarColor,
        // toolbarHeight: 100,
        title: Padding(
          padding: Margins.paddingText,
          child: Text(
            "Dr.Profile",
            style: BaseStyles.appTitleTextStyle,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyApp()));
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            color: Colors.black,
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Column(children: [
                    Container(
                      color: AppColors.appBarColor,
                      width: (MediaQuery.of(context).size.width),
                      height: ((MediaQuery.of(context).size.height) * 8) / 100,
                    ),
                    Container(
                      width: (MediaQuery.of(context).size.width),
                      height: ((MediaQuery.of(context).size.height) * 11) / 100,
                      decoration: BaseStyles.containerDecorationOnlyRight,
                      padding: Margins.k16pall,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: Radii.k12pxRadius,
                                  color: AppColors.iconContainerFiller1,
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  doctor.audioIcon
                                      ? CustomIcon.PHONE
                                      : CustomIcon.PHONE_DISABLED,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              SizedBox(width: 2),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: Radii.k12pxRadius,
                                  color: AppColors.iconContainerFiller1,
                                ),
                                padding: const EdgeInsets.all(5),
                                child: Image.asset(
                                  doctor.videoIcon
                                      ? CustomIcon.VIDEO_CALL
                                      : CustomIcon.VIDEO_DISABLED,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              // Container(
                              //   height: 30,
                              //   width: 30,
                              //   decoration: BoxDecoration(
                              //     borderRadius: Radii.k12pxRadius,
                              //     color: AppColors.iconContainerFiller1,
                              //   ),
                              //   padding: const EdgeInsets.all(5),
                              //   child: Image.asset(
                              //     CustomIcon.CHATS,
                              //     fit: BoxFit.fill,
                              //   ),
                              // ),
                              SizedBox(width: 2),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: Radii.k12pxRadius,
                                    color: AppColors.iconContainerFiller1,
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset(
                                    CustomIcon.CHATS,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              SizedBox(width: 2),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: Radii.k12pxRadius,
                                    color: AppColors.iconContainerFiller1,
                                  ),
                                  //margin: EdgeInsets.all(10),
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset(
                                    CustomIcon.HOSPITAL,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ])),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: (MediaQuery.of(context).size.height) * 7.25 / 100,
                  child: CircleAvatar(
                    radius: (MediaQuery.of(context).size.height) * 7 / 100,
                    //backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: (MediaQuery.of(context).size.height) * 6 / 100,
                      backgroundImage: NetworkImage(
                          "https://cdn1.iconfinder.com/data/icons/male-profession-colour-flat/1063/2-512.png"),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.white),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(doctor.fullName,
                          style: BaseStyles.doctorName,
                          textAlign: TextAlign.left),
                    ),
                    Padding(padding: Margins.k5bottom),
                    Row(
                      children: [
                        Row(children: [
                          Text(doctor.speciality + "",
                              style: BaseStyles.speciality),
                        ]),
                      ],
                    ),
                    Padding(padding: Margins.k5bottom),
                    Row(
                      children: [
                        Container(
                          height: 15,
                          width: 15,
                          margin: Margins.k5ptright,
                          child: Icon(
                            Icons.location_on,
                            size: 15,
                          ),
                        ),
                        Text(Strings.LOCATION,
                            style: BaseStyles.doctorCardHeading.copyWith(
                                color: Color.fromARGB(255, 10, 151, 183))),
                      ],
                    ),
                    Padding(padding: Margins.k5bottom),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.favorite,
                                color: AppColors.heading,
                                size: 20,
                              ),
                              Text(
                                doctor.likes + ' Likes',
                                style: BaseStyles.doctorCardSubHeading(
                                    AppColors.doctorCardHint,
                                    FontStyle.normal,
                                    FontWeight.normal),
                              )
                            ],
                          ),
                          Padding(padding: Margins.k10ptright),
                          VerticalDivider(
                            color: Colors.grey,
                          ),
                          Column(
                            children: [
                              Text(Strings.EXPERIENCE,
                                  style: BaseStyles.doctorCardHeading.copyWith(
                                      color: AppColors.doctorCardText)),
                              Padding(
                                  padding: Margins.baseMarginAll,
                                  child: Text(
                                    doctor.experience + 'Years',
                                    // doctor.experience,

                                    style: BaseStyles.doctorCardSubHeading(
                                        AppColors.doctorCardHint,
                                        FontStyle.normal,
                                        FontWeight.normal),
                                  )),
                            ],
                          ),
                          Padding(padding: Margins.k10ptright),
                          VerticalDivider(
                            color: Colors.grey,
                          ),
                          Column(
                            children: [
                              Text(Strings.REVIEW,
                                  style: BaseStyles.doctorCardHeading.copyWith(
                                      color: AppColors.doctorCardText)),
                              Padding(
                                padding: Margins.baseMarginAll,
                                child: Text(
                                  doctor.review + ' Reviews',
                                  // doctor.review,

                                  style: BaseStyles.doctorCardSubHeading(
                                      AppColors.doctorCardHint,
                                      FontStyle.normal,
                                      FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: Margins.k10ptright),
                          VerticalDivider(
                            color: Colors.grey,
                          ),
                          Column(
                            children: [
                              Text(Strings.POSTS,
                                  style: BaseStyles.doctorCardHeading.copyWith(
                                      color: AppColors.doctorCardText)),
                              Padding(
                                padding: Margins.baseMarginAll,
                                child: Text(
                                  doctor.post + ' Posts',
                                  style: BaseStyles.doctorCardSubHeading(
                                      AppColors.doctorCardHint,
                                      FontStyle.normal,
                                      FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "DOCTOR'S PROFILE",
                          style: BaseStyles.profileInfoStyle,
                        ),
                        Padding(padding: Margins.k5bottom),
                        Text(
                          "Dr. " +
                              doctor.fullName +
                              " is " +
                              doctor.speciality +
                              " specialist with " +
                              '${doctor.experience}' +
                              ' Years of experience',
                          style: BaseStyles.doctorDetailsTextStyle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(padding: Margins.k10bottom),
                        Text(
                          Titles.DOC_WORK_ADDRS,
                          style: BaseStyles.profileInfoStyle,
                        ),
                        Padding(padding: Margins.k5bottom),
                        Text(
                          'DOCTOR LINE1\n' 'DOCTOR LINE 2',

                          // '${doctor.line1} ${doctor.line2}',
                          style: BaseStyles.doctorDetailsTextStyle,
                        ),
                        Padding(padding: Margins.k10bottom
                            // .copyWith(bottom: 300.0)
                            ),
                        Text(
                          "REVIEWS",
                          style: BaseStyles.profileInfoStyle,
                        ),
                        Padding(padding: Margins.k5bottom),
                        Text(
                          '${doctor.review}' +
                              ' People have left a review on Dr.' +
                              '${doctor.fullName}',
                          style: BaseStyles.doctorDetailsTextStyle,
                        ),
                        for (var v in optionsFromServer1.model)
                          enDynamicWidgetApplier[
                              optionsFromServer1.widget.name]!(v)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DoctorCardV2Properties {
  final bool hideCallButton;
  final bool hideVideoCallButton;

  const DoctorCardV2Properties({
    this.hideCallButton = false,
    this.hideVideoCallButton = false,
  });

  factory DoctorCardV2Properties.fromJson(Map<String, dynamic> json) {
    return DoctorCardV2Properties(
      hideCallButton: json["hideCallButton"] ?? false,
      hideVideoCallButton: json['hideVideoCallButton'] ?? false,
    );
  }
}
