import 'colors.dart';
import 'radii.dart';
import 'package:flutter/material.dart';

enum FieldStyle { underline, box }

class BaseStyles {
  static TextStyle speciality = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.warm_grey,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle dateStyle = TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 10,
  );
  static TextStyle docTitle = BaseStyles.doctorName.copyWith(
    // color: AppColors.tealish_Dark,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
  );
  static TextStyle tabTextStyle = TextStyle(
      color: AppColors.tabBorder,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      fontSize: 8,
      height: 1);
  static TextStyle headingTextStyle = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    fontSize: 20,
  );
  static TextStyle urgentCareHeadingTextSyle = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    fontSize: 16,
  );
  static InputDecoration basicTextInputDecoration = InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      isDense: true,
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorTextColor, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorTextColor, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      hintStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 12));
  static TextStyle bottomsubTitleStyle = titleStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle urgentCareAssistantTextStyle(
          var color, var fontweight, double size) =>
      TextStyle(
          color: color,
          fontWeight: fontweight,
          fontFamily: "Montserrat",
          fontStyle: FontStyle.normal,
          fontSize: size);

  static TextStyle homeHeading14pt(Color color) => TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontFamily: 'Montserrat',
        fontSize: 14,
      );
  static TextStyle notifiTextStyle = TextStyle(
    color: AppColors.tabBorder,
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static TextStyle NotifiDetailsText(
          Color color, FontStyle fontStyle, FontWeight fontWeight) =>
      TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        color: color,
        height: 1.2,
      );
  static TextStyle NotifiTime(
          Color color, FontStyle fontStyle, FontWeight fontWeight) =>
      TextStyle(
        fontFamily: 'Montserrat-Bold',
        fontSize: 10,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        color: color,
        height: 1.2,
      );
  static TextStyle doctorCardHeading = TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppColors.doctorCardName,
    height: 1.2000000817435128,
  );
  static TextStyle k12ptTextStyle(
          Color color, FontStyle fontStyle, FontWeight fontWeight) =>
      TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 12,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        color: color,
        height: 1.2,
      );
  static TextStyle doctorCardSubHeading(
          Color color, FontStyle fontStyle, FontWeight fontWeight) =>
      TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 10,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        color: color,
        height: 1.2,
      );

  static TextStyle deviceInfoTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 8,
  );
  static TextStyle doctorDetailsTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static TextStyle actionChipTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 8,
  );
  static TextStyle emergencyChipTextStyle = TextStyle(
    color: AppColors.emergencyColor,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static TextStyle hintTextStyle = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.bold,
    fontFamily: 'Montserrat',
    fontSize: 16,
  );
  static TextStyle retryTextStyle = TextStyle(
    color: AppColors.tabBorder,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 16,
  );
  static TextStyle ConnectTextStyle = TextStyle(
    color: AppColors.tabBorder,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static TextStyle baseTextStyle = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.28571,
  );
  static TextStyle loginHintTextStyle = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.italic,
    fontSize: 16,
    height: 1.28571,
  );
  static TextStyle deviceHeadingTextStyle(Color? color,
          [FontWeight fontweight = FontWeight.bold,
          String fontfamily = 'Montserrat',
          double size = 16]) =>
      TextStyle(
        color: (color != null) ? color : AppColors.heading,
        fontWeight: fontweight,
        fontFamily: fontfamily,
        fontSize: size,
      );
  static TextStyle monitoringDeviceHeadingTextStyle(Color? color,
          [FontWeight fontweight = FontWeight.w700,
          String fontfamily = 'Montserrat',
          double size = 16]) =>
      TextStyle(
        color: (color != null) ? color : AppColors.heading,
        fontWeight: fontweight,
        fontFamily: fontfamily,
        fontSize: size,
      );
  static TextStyle tagTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w700,
    fontFamily: 'Montserrat',
    fontSize: 16,
  );
  static TextStyle createAccountTextStyle(Color? color,
          [FontWeight fontweight = FontWeight.w400,
          String fontfamily = 'Montserrat',
          double size = 12]) =>
      TextStyle(
        color: color,
        fontWeight: fontweight,
        fontFamily: fontfamily,
        fontSize: size,
      );
  static TextStyle subTextStyle(Color? color,
          [FontWeight fontweight = FontWeight.w400,
          String fontfamily = 'Montserrat',
          double size = 20]) =>
      TextStyle(
        color: color,
        fontWeight: fontweight,
        fontFamily: fontfamily,
        fontSize: size,
      );
  static TextStyle infoTextStyle(Color? color,
          [FontWeight fontweight = FontWeight.w400,
          String fontfamily = 'Montserrat',
          double size = 12]) =>
      TextStyle(
        color: (color != null) ? color : AppColors.heading,
        fontWeight: fontweight,
        fontFamily: fontfamily,
        fontSize: size,
      );

  static TextStyle appTitleTextStyle = TextStyle(
    color: AppColors.example,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 1.4,
  );

  static TextStyle errorWidgetTitleTextStyle = TextStyle(
    color: AppColors.example,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 1.125,
  );

  static TextStyle lisInfoTextStyle = errorWidgetDescTextStyle;

  static TextStyle errorWidgetDescTextStyle = TextStyle(
    color: AppColors.example,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.5,
  );

  static TextStyle listTitleStyle = TextStyle(
    color: AppColors.example,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.42857,
  );

  // urgent care styles
  static TextStyle urgentCareBaseTextStyle = TextStyle(
      color: AppColors.device_heading,
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 18);
  static TextStyle urgentCareBoldTextStyle = TextStyle(
      color: AppColors.heading,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 20);
  static TextStyle urgentCareInfoTextStyle = TextStyle(
      color: AppColors.device_heading,
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.italic,
      fontSize: 15);

  static TextStyle urgentCareResumeHeadingTextStyle = TextStyle(
      color: AppColors.heading,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 20);
  static TextStyle urgentCareResumeInfoTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 15,
  );
  static TextStyle hintLabelTextStyle = TextStyle(
    color: AppColors.hintLabel,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 16,
  );
  static TextStyle urgentCarePaymentTextTextStyle = TextStyle(
    color: AppColors.paymentTextColor,
    fontWeight: FontWeight.w500,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
  );

  // textInputDecoration
  static InputDecoration textInputDecoration = InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      isDense: true,
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorTextColor, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorTextColor, width: 0.5),
          borderRadius: Radii.textBoxRadius),
      hintStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 12));

  static BoxDecoration containerDecoration = BoxDecoration(
      borderRadius: Radii.homeRadius, color: AppColors.homeScreenBackground);

  static BoxDecoration containerDecorationOnlyRight = BoxDecoration(
      borderRadius: Radii.onlyRightRadius, color: AppColors.white);

  // elevatedButtonStyle
  static ButtonStyle basicButtonStyle = ElevatedButton.styleFrom(
      primary: AppColors.heading,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
      elevation: 0);

  static TextStyle deviceInfoTextStyle1 = TextStyle(
      color: AppColors.device_heading,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 25);

  static TextStyle deviceInfoTextStyle2 = TextStyle(
      color: AppColors.device_heading,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 20);

  static TextStyle baseInfoTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 20,
  );
  static TextStyle baseInfoTextStyle1 = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 15,
  );
  static TextStyle headingTextStyle1 = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.w500,
    fontFamily: 'Montserrat',
    fontSize: 20,
  );
  static TextStyle baseTextStyle1 = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    // height: 1.28571,
  );
  static TextStyle deviceInfoTextStyle3 = TextStyle(
      color: AppColors.device_heading,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 15);
  static TextStyle chatWith = TextStyle(
    color: AppColors.device_heading,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    fontFamily: "Montserrat",
    fontStyle: FontStyle.normal,
  );
  static TextStyle doctorNameTextStyle = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 20,
    color: AppColors.device_heading,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static TextStyle headingW400TextStyle = TextStyle(
    color: AppColors.heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 20,
  );

  static TextStyle appointmentHeadingStyle = TextStyle(
    color: AppColors.white,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 24,
  );
  static TextStyle doctorNameStyle = TextStyle(
      color: AppColors.heading,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: 20);
  static TextStyle confirmationHeadingTextStyle(double size) => TextStyle(
      color: AppColors.homeTabViewColor1,
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      fontStyle: FontStyle.normal,
      fontSize: size);
  static TextStyle confirmationInfoTextStyle(
          double size, Color color, FontWeight fontweight) =>
      TextStyle(
          color: color,
          fontWeight: fontweight,
          fontFamily: "Montserrat",
          fontStyle: FontStyle.normal,
          fontSize: size);
  static TextStyle editableStyle(double size, Color color,
          FontWeight fontweight, FontStyle fontStyle) =>
      TextStyle(
          color: color,
          fontWeight: fontweight,
          fontFamily: "Montserrat",
          fontStyle: fontStyle,
          fontSize: size);
  static TextStyle finishButtonTextStyle = TextStyle(
    color: AppColors.device_heading,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static TextStyle defaultText = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w400,
    fontFamily: 'Montserrat',
    fontSize: 12,
  );
  static TextStyle defaultBoldText = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 12,
    color: AppColors.heading,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static TextStyle doctorName = TextStyle(
    fontFamily: "Montserrat",
    fontSize: 20,
    color: AppColors.tabBorder,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static TextStyle vitalManualHeadingTextStyle = TextStyle(
      fontStyle: FontStyle.normal,
      color: AppColors.device_heading,
      fontWeight: FontWeight.bold,
      fontSize: 16);

  static TextStyle signupStyles = BaseStyles.headingTextStyle
      .copyWith(color: AppColors.signupScreen, fontSize: 16);

  static TextStyle signupHeadingStyles =
      BaseStyles.signupStyles.copyWith(fontSize: 24);

  // drawerStyles
  static BoxDecoration drawerStyles =
      BoxDecoration(color: AppColors.appBarColor);

  // monitoring vitals styles
  static TextStyle vitalTypeStyle = BaseStyles.tagTextStyle
      .copyWith(fontWeight: FontWeight.w600, fontSize: 12);
  static TextStyle vitalReadingGreen = BaseStyles.tagTextStyle
      .copyWith(color: AppColors.cool_green, fontSize: 12);
  static TextStyle vitalTime = BaseStyles.deviceInfoTextStyle
      .copyWith(color: AppColors.dark_blue_grey, fontSize: 6);
  static TextStyle vitalReadingMaroon =
      BaseStyles.tagTextStyle.copyWith(color: AppColors.maroon, fontSize: 12);
  static TextStyle vitalReadingYellow =
      BaseStyles.tagTextStyle.copyWith(color: AppColors.yellow, fontSize: 12);

  // upload Health record styles
  static TextStyle titleStyle = TextStyle(
    color: const Color(0xff054c5c),
    fontWeight: FontWeight.w700,
    fontFamily: "Montserrat",
    fontSize: 20,
    fontStyle: FontStyle.normal,
  );

  static TextStyle subTitleStyle = titleStyle.copyWith(fontSize: 14);

  static TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.turquoiseBlue,
    fontSize: 12,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  );

  static ButtonStyle outlinedButtonStyle = ButtonStyle(
      side: MaterialStateProperty.all(
          BorderSide(width: 0.5, color: AppColors.turquoiseBlue)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(28)),
      )));

  static ButtonStyle filledButtonStyle = BaseStyles.basicButtonStyle
      .copyWith(backgroundColor: MaterialStateProperty.all(Color(0x5931c4c3)));

  static InputDecoration notesContainerStyle = InputDecoration(
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: BorderRadius.circular(12)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.heading, width: 0.5),
          borderRadius: BorderRadius.circular(12)),
      isDense: true,
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorTextColor, width: 0.5),
          borderRadius: BorderRadius.circular(12)),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.errorTextColor, width: 0.5),
          borderRadius: BorderRadius.circular(12)),
      hintStyle: TextStyle(fontStyle: FontStyle.italic, fontSize: 12));

  // Profile styles
  static TextStyle profileTitleStyle = titleStyle.copyWith(fontSize: 16);
  static TextStyle profileHeadingStyle = TextStyle(
    fontFamily: 'MerriweatherSans',
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.1,
  );
  static TextStyle profileCustomTileStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.doctorCardHint,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static TextStyle profileInfoStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.turquoiseBlue,
    fontSize: 10,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static TextStyle fadedProfileInfoStyle = profileInfoStyle.copyWith(
    fontWeight: FontWeight.w400,
  );
  static TextStyle profileCardTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: Color(0xff054c5c),
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );
  static TextStyle userNameStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.tealish,
    fontSize: 14,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
  static TextStyle userMobileNumStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: Color(0xff054c5c),
    fontSize: 10,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static TextStyle stickyStyle = TextStyle(color: const Color(0x2631c4c3));

  static TextStyle stickytextStyle = appTitleTextStyle.copyWith(
      fontSize: 16,
      color: AppColors.dark_turquoise,
      fontWeight: FontWeight.w900);

  static TextStyle stickyheadingtextStyle = appTitleTextStyle.copyWith(
      fontFamily: "Montserrat",
      fontSize: 25.2,
      color: AppColors.dark_turquoise,
      fontWeight: FontWeight.w900);

  static TextStyle videoCallTitlestyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.dark_turquoise,
    fontSize: 28,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );

  static TextStyle appbarTitleStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.88,
  );

  static TextStyle noDeviceDetectedStyle = TextStyle(
    fontFamily: 'Montserrat',
    color: AppColors.tealish,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
  );
}
