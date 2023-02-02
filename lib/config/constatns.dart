import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

BoxShadow cBoxShadow = BoxShadow(
  offset: const Offset(0, 3),
  blurRadius: 2,
  color: const Color(0xFF2980B9).withOpacity(0.25),
);

BoxDecoration cBoxDecoration = BoxDecoration(
    color: Get.isDarkMode ? Colors.white.withOpacity(0.1) : Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        blurRadius: 1,
        offset: Offset(0, 1),
      )
    ],
    borderRadius: BorderRadius.circular(10));

const kSecondaryColor = Color(0xFF8B94BC);
const kGreenColor = Color(0xFF6AC259);
const kRedColor = Color(0xFFE92E30);
const kGrayColor = Color(0xFFC1C1C1);
const kBlackColor = Color(0xFF101010);
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

const double kDefaultPadding = 20.0;
