import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:jongseo_toeic/config/constatns.dart';
import 'package:jongseo_toeic/controllers/question_controller.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';

const SCORE_PATH = '/score';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    QuestionController _qnController = Get.put(QuestionController());
    var args = Get.arguments;
    int day = args['day'];
    _qnController.day = day;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.offAndToNamed(VOCA_STEP_PATH, arguments: {
              'day': day,
              'vocas': Voca.getDay(day),
            });
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const Spacer(flex: 1),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: Color(0xFF8B94BC)),
              ),
              Text(
                "${_qnController.numOfCorrectAns} / ${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Color(0xFF8B94BC)),
              ),
              const Spacer(flex: 1),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(_qnController.wrongQuestions.length,
                      (index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 15),
                      decoration: cBoxDecoration,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              width: size.width / 2 - 20,
                              height: 50,
                              child: Center(
                                child: Text(
                                    '${_qnController.wrongQuestions[index].question}'),
                              )),
                          const SizedBox(width: 10),
                          Expanded(
                            child: SizedBox(
                              width: size.width / 2 - 20,
                              height: 50,
                              child: Center(
                                child: Text(
                                    '${_qnController.wrongQuestions[index].options[_qnController.wrongQuestions[index].answer]}'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              _qnController.isEnd
                  ? ScoreButton(
                      day: day,
                      text: 'Exit',
                      onPress: () {
                        Get.offAllNamed(VOCA_STEP_PATH, arguments: {
                          'day': day,
                          'vocas': Voca.getDay(day),
                        });
                      },
                    )
                  : ScoreButton(
                      day: day,
                      text: 'Continue',
                      onPress: () {
                        _qnController.toContinue();
                        Get.toNamed(QUIZ_PATH, arguments: {'day': day});
                      },
                    ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}

class ScoreButton extends StatelessWidget {
  const ScoreButton({
    super.key,
    required this.day,
    required this.text,
    required this.onPress,
  });

  final int day;
  final String text;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    QuestionController qnController = Get.find<QuestionController>();
    return OutlinedButton(
      onPressed: onPress,
      child: Text(
        text,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
