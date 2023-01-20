import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
import 'package:jongseo_toeic/screens/quiz/components/body.dart';

import 'package:get/get.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';

const QUIZ_PATH = '/quiz';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    int day = args['day'];

    QuestionController _questionController = Get.put(QuestionController());
    _questionController.day = day;

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Get.offAllNamed(VOCA_STEP_PATH, arguments: {
                'day': day,
                'vocas': Voca.getDay(day),
              });
            },
          ),
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            GetBuilder<QuestionController>(builder: (controller) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: _questionController.skipQuestion,
                  child: Text(
                    '${controller.text}',
                    style: TextStyle(color: controller.color, fontSize: 20),
                  ),
                ),
              );
            })
          ],
        ),
        body: Body());
  }
}
