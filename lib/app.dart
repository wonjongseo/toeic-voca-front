import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/config/theme.dart';
import 'package:jongseo_toeic/screens/my/my_screen.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/score/score_screen.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';
import 'package:jongseo_toeic/screens/voca/vocas_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themings.lightTheme,
      darkTheme: Themings.darkTheme,
      title: 'Jongseo Toeic',
      initialRoute: HOME_PATH,
      getPages: [
        GetPage(name: HOME_PATH, page: () => HomeScreen()),
        GetPage(name: MY_PATH, page: () => const MyScreen()),
        GetPage(name: VOCA_STEP_PATH, page: () => const VocaStepScreen()),
        GetPage(name: VOCAS_PATH, page: () => const VocasScreen()),
        GetPage(name: QUIZ_PATH, page: () => QuizScreen()),
        GetPage(name: SCORE_PATH, page: () => const ScoreScreen()),
      ],
    );
  }
}
