import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
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
    return Scaffold(
      appBar: AppBar(
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
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),
              Text(
                "${_qnController.numOfCorrectAns} / ${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),
              const Spacer(flex: 1),
              SingleChildScrollView(
                child: Column(
                  children: List.generate(_qnController.wrongQuestions.length,
                      (index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [cBoxShadow],
                        gradient: cLinearGradient,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: size.width / 2 - 20,
                              height: 50,
                              child: Center(
                                child: Text(
                                    '${_qnController.wrongQuestions[index].question}'),
                              )),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Container(
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
              Spacer(flex: 1),
              _qnController.wrongQuestions.isNotEmpty
                  ? ScoreButton(
                      day: day,
                      text: 'Continue',
                      onPress: () {
                        _qnController.toContinue();
                        Get.toNamed(QUIZ_PATH, arguments: {'day': day});
                      },
                    )
                  : ScoreButton(
                      day: day,
                      text: 'Exit',
                      onPress: () {
                        Get.offAllNamed(VOCA_STEP_PATH, arguments: {
                          'day': day,
                          'vocas': Voca.getDay(day),
                        });
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
      onPressed: () {
        qnController.toContinue();
        Get.toNamed(QUIZ_PATH, arguments: {'day': day});
      },
      child: const Text(
        'Continue',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
