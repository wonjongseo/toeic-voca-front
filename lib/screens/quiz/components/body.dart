import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
import 'package:jongseo_toeic/screens/quiz/components/progress_bar.dart';
import 'package:jongseo_toeic/screens/quiz/components/question_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _questionController = Get.put(QuestionController());

    return Stack(
      children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  (() => Text.rich(
                        TextSpan(
                            text:
                                "Question ${_questionController.questionNumber.value}",
                            style:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: kSecondaryColor,
                                    ),
                            children: [
                              TextSpan(
                                  text:
                                      "/${_questionController.questions.length}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .copyWith(color: kSecondaryColor))
                            ]),
                      )),
                ),
              ),
              const Divider(thickness: 1.5),
              const SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  onPageChanged: _questionController.updateTheQnNum,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
