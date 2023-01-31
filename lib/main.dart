import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/constants/score_controller.dart';
import 'package:jongseo_toeic/models/score/score.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/screens/my/my_screen.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/score/score_screen.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_example.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';
import 'package:jongseo_toeic/screens/voca/vocas_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  if (GetPlatform.isMobile) {
    await Hive.initFlutter();
  }else if(GetPlatform.isDesktop) {
     Hive.init("C:/Users/kissco/Desktop/learning/jongseo_toeic/assets/hive");
  }
  Hive.registerAdapter(VocaAdapter());
  Hive.registerAdapter(ScoreAdapter());

  Voca.jsonToObject();
  Voca.listToMap();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
          bodyLarge: GoogleFonts.oswald(textStyle: textTheme.bodyLarge),
        ),
      ),
      title: 'Jongseo Voca',
      initialRoute: HOME_PATH,
      initialBinding : BindingsBuilder(() => {Get.put(ScoreController())}),
      getPages: [
        GetPage(name: HOME_PATH, page: () =>  const HomeScreen()),
        GetPage(name: MY_PATH, page: () => const MyScreen()),
        GetPage(name: VOCA_STEP_PATH, page: () => const VocaStepScreen()),
        GetPage(name: VOCAS_PATH, page: () => const VocasScreen()),
        GetPage(name: QUIZ_PATH, page: () => QuizScreen()),
        GetPage(name: SCORE_PATH, page: () => const ScoreScreen()),
      ],
    );
  }
}

