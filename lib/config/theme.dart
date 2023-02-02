import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/config/colors.dart';
import 'package:jongseo_toeic/config/fonts.dart';

class Themings {
  // ignore: prefer_const_constructors

  static final themeData =
      Get.isDarkMode ? ThemeData.dark() : ThemeData.light();
  static final TextStyle darkText = TextStyle(
    // backgroundColor: Colors.black,
    // fontFamily: AppFonts.circularStd,
    color: AppColors.black,
    fontFamily: AppFonts.circularStd,
  );

  static final TextStyle lightText = TextStyle(
    color: AppColors.black,
    fontFamily: AppFonts.circularStd,
  );
  // ignore: prefer_const_constructors
  static final IconThemeData darkIcon = IconThemeData(
    color: AppColors.whiteGrey,
  );

  // ignore: prefer_const_constructors
  static final IconThemeData lightIcon = IconThemeData(
    color: AppColors.black,
  );

  static final ThemeData darkTheme = themeData.copyWith(
    backgroundColor: AppColors.black,
    brightness: Brightness.dark,
    primaryColor: AppColors.blue,
    appBarTheme: AppBarTheme(
        toolbarTextStyle: darkText,
        titleTextStyle: darkText,
        iconTheme: darkIcon,
        color: AppColors.black),
    textTheme: TextTheme(
      headline1: darkText,
      headline2: darkText,
      headline3: darkText,
      headline4: darkText,
      headline5: darkText,
      headline6: darkText,
      subtitle1: darkText,
      subtitle2: darkText,
      bodyText1: darkText,
      bodyText2: darkText,
      caption: darkText,
      button: darkText,
      overline: darkText,
    ),
    scaffoldBackgroundColor: AppColors.black,
  );

  static final ThemeData lightTheme = themeData.copyWith(
    backgroundColor: AppColors.whiteGrey,
    brightness: Brightness.light,
    primaryColor: AppColors.blue,
    appBarTheme: AppBarTheme(
        toolbarTextStyle: lightText,
        titleTextStyle: lightText,
        iconTheme: lightIcon,
        color: AppColors.whiteGrey),
    textTheme: TextTheme(
      headline1: lightText,
      headline2: lightText,
      headline3: lightText,
      headline4: lightText,
      headline5: lightText,
      headline6: lightText,
      subtitle1: lightText,
      subtitle2: lightText,
      bodyText1: lightText,
      bodyText2: lightText,
      caption: lightText,
      button: lightText,
      overline: lightText,
    ),
    scaffoldBackgroundColor: AppColors.lightGrey,
  );
}
