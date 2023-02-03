import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:jongseo_toeic/controllers/question_controller.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/quiz/components/body.dart';

import 'package:get/get.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';

const QUIZ_PATH = '/quiz';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map args = Get.arguments;
    QuestionController _questionController = Get.put(QuestionController());
    int day = args['day'];

    _questionController.day = day;
    if (args.containsKey('step')) {
      int step = args['step'];
      _questionController.step = step;
    }

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
              if (day == -1) {
                Get.offAllNamed(HOME_PATH);
              } else {
                Get.offAllNamed(VOCA_STEP_PATH, arguments: {
                  'day': day,
                  'vocas': Voca.getDay(day),
                });
              }
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
