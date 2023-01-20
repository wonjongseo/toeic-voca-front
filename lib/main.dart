import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/screens/my/my_screen.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/score/score_screen.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';
import 'package:jongseo_toeic/screens/voca/vocas_screen.dart';

void main() {
  Voca.jsonToObject();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor:  Colors.black,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
        bodyText1: GoogleFonts.oswald(textStyle: textTheme.bodyText1),
        ),
      ),
      title: 'Jongseo Voca',
      home: const HomeScreen(),
      
      getPages: [
        GetPage(name: HOME_PATH, page: () => const HomeScreen()),
        GetPage(name: MY_PATH, page: () => const MyScreen()),
        GetPage(name: VOCA_STEP_PATH, page: () => const VocaStepScreen()),
        GetPage(name: VOCAS_PATH, page: () =>  VocasScreen()),
        GetPage(name: QUIZ_PATH, page: () =>  QuizScreen()),
        GetPage(name: SCORE_PATH, page: () =>  const ScoreScreen()),
      ],
    );
  }
}
