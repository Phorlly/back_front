import 'package:flutter/material.dart';
import 'package:back_front/FrontEnd/Global/MyColor.dart' as colors;

class MyTextStyle {
  static TextStyle headLine1 = const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle headLine3 = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle bodyText1 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle bodyText2 = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );
  static TextStyle subTitle1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: colors.MyColors.disableColor,
  );
  static TextStyle subTitle2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: colors.MyColors.accentColor,
  );
}
