import 'package:flutter/material.dart';
import 'package:jongseo_toeic/config/colors.dart';
import 'package:jongseo_toeic/config/fonts.dart';


class Themings {
  // ignore: prefer_const_constructors
  static final TextStyle darkText = TextStyle(
    color: AppColors.whiteGrey,
    fontFamily: AppFonts.circularStd,
  );
  
  // ignore: prefer_const_constructors
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

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.blue,
    backgroundColor: AppColors.black,
    brightness: Brightness.dark,
    primaryColor: AppColors.blue,
    appBarTheme: AppBarTheme(
      toolbarTextStyle: darkText,
      titleTextStyle: darkText,
      iconTheme: darkIcon,
      color: AppColors.black
    ),
    textTheme: TextTheme(
      bodyText1: darkText,
      bodyText2: darkText,
      labelMedium: darkText,
      caption: darkText,
      button: darkText,
      overline: darkText,
    ),
    scaffoldBackgroundColor: AppColors.black,
  );

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    backgroundColor: AppColors.whiteGrey,
    brightness: Brightness.light,
    primaryColor: AppColors.blue,
    appBarTheme: AppBarTheme(
      toolbarTextStyle: lightText,
      titleTextStyle: lightText,
      iconTheme: lightIcon,
      color: AppColors.whiteGrey
    
    ),
    
    textTheme: TextTheme(
      bodyText1: lightText,
      bodyText2: lightText,
      labelMedium: lightText,
      caption: lightText,
      button: lightText,
      overline: lightText,
    ),
    scaffoldBackgroundColor: AppColors.lightGrey,
  );
}
