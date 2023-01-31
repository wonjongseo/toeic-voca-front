import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/score_controller.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/repository/score_repository.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';

class DayCard extends StatelessWidget {
  DayCard({
    Key? key,
    required this.day,
  }) : super(key: key);

  final int day;
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
  
  @override
  Widget build(BuildContext context) {
    

    Size size = MediaQuery.of(context).size;
    int vocaCount = Voca.getCountOfDay(day);
    
    return GetBuilder<ScoreController>(
      builder: (controller) {
        int score =  controller.getScoreOfDay(day);
        double progressValue = (((100 / vocaCount) * (score * 0.01)));
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: InkWell(
            onTap: () {
              Get.toNamed(VOCA_STEP_PATH,
                  arguments: {'day': day, 'vocas': Voca.getDay(day)});
            },
            child:Container(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  margin: const EdgeInsets.only(bottom: 30),
                  height: 90,
                  width: size.width / 1.15,
                  decoration: cBoxDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Day $day',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Row(
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
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(' ${score} / $vocaCount'),
                          const SizedBox(height: 20),
                          Center(child: Text('${(1 * 100).ceil()} %'))
                        ],
                      ),
                    ],
                  ),
            ),
          ),
        );
      }
    );
  }
}
