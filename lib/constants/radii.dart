import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class Radii {
  static const BorderRadiusGeometry k4pxRadius =
      BorderRadius.all(Radius.circular(4));
  static const BorderRadius k8pxRadius = BorderRadius.all(Radius.circular(8));
  static const BorderRadiusGeometry k3pxRadius =
      BorderRadius.all(Radius.circular(3));
  static const BorderRadiusGeometry homeRadius = BorderRadius.only(
      topLeft: Radius.circular(35), topRight: Radius.circular(35));
  static const BorderRadiusGeometry homeRadiusLoggedIn =
      BorderRadius.only(topRight: Radius.circular(50));
  static const BorderRadiusGeometry homeRadiusLogIn =
      BorderRadius.only(topRight: Radius.circular(50));
  static const BorderRadiusGeometry k12pxRadius =
      BorderRadius.all(Radius.circular(12));
  static const BorderRadiusGeometry k19pxRadius =
      BorderRadius.all(Radius.circular(19));
  static const BorderRadiusGeometry k30pxRadius =
      BorderRadius.only(topRight: Radius.circular(30));

  static const BorderRadius k17pxRadius = BorderRadius.all(Radius.circular(17));
  static const BorderRadius textBoxRadius =
      BorderRadius.all(Radius.circular(28));
  static const BorderRadius conntainerCornerRadii =
      BorderRadius.only(topRight: Radius.elliptical(60, 50));
  static const double profileRadius = 50;
  static const BorderRadiusGeometry onlyRightRadius =
      BorderRadius.only(topRight: Radius.circular(30));
  static const BorderRadiusGeometry topCurveBorder35pxRadius =
      BorderRadius.only(
          topLeft: Radius.circular(35), topRight: Radius.circular(35));
  static const BorderRadiusGeometry bottomSheetRadius = BorderRadius.only(
      topLeft: Radius.circular(20), topRight: Radius.circular(20));

  static const BorderRadiusGeometry buttonRadius =
      BorderRadius.all(Radius.circular(20));

  static const double AvatarRadius = 24;
  static const double AvatarRadiusIn = 22;
  static const double AppBarAvatarRadius = 33;
  static const double AvatarRadius30x = 30;
  static const double AppBarAvatarInsideRadius = 32;
  static const double AvatarRadius28x = 28;
}

class Sizes {
  static const double mainContainerHeightText = 154;
  static const double mainContainerWidthText = 323;
  static const double containerWidth2 = 300;
  static const double containerWidth = 312;
  static const double containerHeight = 45;
  static const double container2Height = 70;
  static const double ContainerHeight = 700;
  static const double containerHeight2 = 755;
  static const double notificationContainerWidth = 382;
  static const double notificationContainerHeight = 74;
  static const double sizeboxSize10x = 10;
  static const double sizeboxSize12x = 12;
  static const double sizeboxSize16x = 16;
  static const double sizeboxSize18x = 18;
  static const double sizeboxSize20x = 20;
}

class IconSize {
  static const double iconSize30x = 30;
}

class fontSize {
  static const double fontsize10x = 10;
  static const double fontsize14x = 14;
}
