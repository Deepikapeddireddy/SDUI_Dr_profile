import 'package:en_dynamic_ui/models/experience_model.dart';
import 'package:en_dynamic_ui/widgets/doctor/Reviews.dart';
import 'package:en_dynamic_ui/widgets/doctor/doctor_profile.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/radii.dart';
import '../../constants/borders.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import "../../models/doctor_model.dart";

class DoctorCardV1 extends StatelessWidget {
  final DoctorModel doctor;
  //final DoctorExperienceModel exp;
  final DoctorCardV1Properties? cardProperties;
  const DoctorCardV1({
    Key? key,
    required this.doctor,
    //required this.exp,
    this.cardProperties,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          print("clicked");
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DoctorProfile(
                        doctor: doctor,
                      )));
        },
        child: Container(
            margin: Margins.doctorCardMargin,
            decoration: BoxDecoration(
              borderRadius: Radii.k12pxRadius,
              color: AppColors.homeScreenBackgroundWhite,
              border: Border.fromBorderSide(Borders.doctorCardBorder),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        padding: Margins.baseMarginAll,
                        child: Column(
                          children: [
                            Stack(children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://cdn1.iconfinder.com/data/icons/male-profession-colour-flat/1063/2-512.png"),
                              ),
                              Positioned(
                                bottom: 0,
                                right: -2,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  margin: Margins.k5ptright,
                                  decoration: BoxDecoration(
                                    borderRadius: Radii.k4pxRadius,
                                    color: AppColors.onlineDoctor,
                                  ),
                                ),
                              ),
                            ]),
                            Text.rich(
                              TextSpan(
                                style: BaseStyles.doctorCardSubHeading(
                                    AppColors.doctorCardHint,
                                    FontStyle.normal,
                                    FontWeight.normal),
                                children: [
                                  TextSpan(
                                    text: doctor.likes,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '  ' + Strings.LIKES,
                                  ),
                                ],
                              ),
                              textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 7,
                      child: Container(
                        padding: Margins.baseMarginAll,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              doctor.fullName,
                              style: BaseStyles.doctorCardHeading,
                              textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Text(
                              doctor.speciality,
                              style: BaseStyles.doctorCardSubHeading(
                                  AppColors.doctorCardHint,
                                  FontStyle.normal,
                                  FontWeight.normal),
                              textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false),
                              textAlign: TextAlign.left,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  margin: Margins.k5ptright,
                                  child: Image.asset(
                                    CustomIcon.LOCATION,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  Strings.LOCATION,
                                  style: BaseStyles.doctorCardSubHeading(
                                      AppColors.doctorCardText,
                                      FontStyle.normal,
                                      FontWeight.normal),
                                  textHeightBehavior: const TextHeightBehavior(
                                      applyHeightToFirstAscent: false),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.EXPERIENCE,
                                      style: BaseStyles.doctorCardSubHeading(
                                          AppColors.doctorCardText,
                                          FontStyle.italic,
                                          FontWeight.normal),
                                      textHeightBehavior:
                                          const TextHeightBehavior(
                                              applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        style: BaseStyles.doctorCardSubHeading(
                                            AppColors.doctorCardHint,
                                            FontStyle.normal,
                                            FontWeight.normal),
                                        children: [
                                          TextSpan(
                                            text: doctor.experience,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: Strings.YEARS,
                                          ),
                                        ],
                                      ),
                                      textHeightBehavior:
                                          const TextHeightBehavior(
                                              applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.REVIEW,
                                      style: BaseStyles.doctorCardSubHeading(
                                          AppColors.doctorCardText,
                                          FontStyle.italic,
                                          FontWeight.normal),
                                      textHeightBehavior:
                                          const TextHeightBehavior(
                                              applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text.rich(
                                      TextSpan(
                                        style: BaseStyles.doctorCardSubHeading(
                                            AppColors.doctorCardHint,
                                            FontStyle.normal,
                                            FontWeight.normal),
                                        children: [
                                          TextSpan(
                                            text: doctor.review,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '  ' + Strings.REVIEW,
                                          ),
                                        ],
                                      ),
                                      textHeightBehavior:
                                          const TextHeightBehavior(
                                              applyHeightToFirstAscent: false),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              cardProperties!.hideCallButton == false
                                  ? GestureDetector(
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
                                          CustomIcon.PHONE_ICON,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    )
                                  : const SizedBox(
                                      width: 1,
                                    ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: Radii.k12pxRadius,
                                    color: AppColors.iconContainerFiller1,
                                  ),
                                  padding: const EdgeInsets.all(3),
                                  child: Image.asset(
                                    CustomIcon.VIDEO_CALL_ICON,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: Radii.k12pxRadius,
                                    color: AppColors.iconContainerFiller1,
                                  ),
                                  child: Image.asset(
                                    CustomIcon.HOSPITAL_SELECTED,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }
}

class DoctorCardV1Properties {
  final bool hideCallButton;

  const DoctorCardV1Properties({
    this.hideCallButton = false,
  });

  DoctorCardV1Properties.initialState() : hideCallButton = false;

  factory DoctorCardV1Properties.fromJson(Map<String, dynamic> json) {
    return DoctorCardV1Properties(
      hideCallButton: json["hideCallButton"] ?? false,
    );
  }
}
