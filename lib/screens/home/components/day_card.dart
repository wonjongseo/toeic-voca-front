import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/config/colors.dart';
import 'package:jongseo_toeic/config/constatns.dart';
import 'package:jongseo_toeic/controllers/vocabulary_controller.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';

// ignore: must_be_immutable
class DayCard extends StatelessWidget {
  DayCard({
    Key? key,
    required this.day,
  }) : super(key: key);

  final int day;

  VocabularyController vocabularyController = Get.find<VocabularyController>();

  void getTo() {
    Get.toNamed(VOCA_STEP_PATH, arguments: {'day': day});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    int vocaCount = vocabularyController.countOfDaysVoca(day);
    int correctNumber = vocabularyController.scoreOfDay(day);
    double progressValue = (((100 / vocaCount) * (correctNumber * 0.01)));
    bool isAllCorrect = vocaCount == correctNumber;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: getTo,
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          margin: const EdgeInsets.only(bottom: 30),
          height: 90,
          width: size.width / 1.15,
          decoration: BoxDecoration(
              color:
                  isAllCorrect ? AppColors.correctColor : AppColors.whiteGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 1,
                  offset: Offset(0, 1),
                )
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Day ${day + 1}',
                      style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: 20),
                  _progressbar(size, progressValue)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(' ${correctNumber} / $vocaCount'),
                  ),
                  const SizedBox(height: 20),
                  Center(
                      child: Text(
                    '${(1 * 100).ceil()} %',
                    style: Theme.of(context).textTheme.bodySmall,
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _progressbar(Size size, double progressValue) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 10,
          width: size.width / 1.5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              backgroundColor: Colors.grey.withOpacity(0.2),
              color: getColor(progressValue),
              value: progressValue,
            ),
          ),
        ),
      ],
    );
  }

  Color getColor(double range) {
    if (range > 0 && range < 0.1) {
      return Colors.redAccent;
    } else if (range < 0.35) {
      return Colors.yellowAccent;
    } else if (range < 0.65) {
      return Colors.orangeAccent;
    } else {
      return Colors.greenAccent;
    }
  }
}
