import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/question_controller.dart';

class Option extends StatelessWidget {
  const Option(
      {Key? key, required this.test, required this.index, required this.press})
      : super(key: key);

  final String test;
  final int index;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.correctAns) {
                return kGreenColor;
              } else if (index == qnController.selectedAns &&
                  index != qnController.correctAns) {
                return kRedColor;
              }
            }
            return kGrayColor;
          }

          IconData getTheRightIcon() {
            return getTheRightColor() == kRedColor ? Icons.close : Icons.done;
          }

          return qnController.isWrong
              ? OptionCard(getTheRightColor, getTheRightIcon)
              : InkWell(
                  onTap: press,
                  child: OptionCard(getTheRightColor, getTheRightIcon));
        });
  }

  Container OptionCard(Color getTheRightColor(), IconData getTheRightIcon()) {
    return Container(
      margin: const EdgeInsets.only(top: kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
          border: Border.all(color: getTheRightColor()),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${index + 1} ${test}',
            style: TextStyle(color: getTheRightColor(), fontSize: 16),
          ),
          Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  color: getTheRightColor() == kGrayColor
                      ? Colors.transparent
                      : getTheRightColor(),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: getTheRightColor())),
              child: getTheRightColor() == kGrayColor
                  ? null
                  : Icon(
                      getTheRightIcon(),
                      size: 16,
                    )),
        ],
      ),
    );
  }
}
