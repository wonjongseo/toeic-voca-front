import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
import 'package:jongseo_toeic/screens/voca/voca_step_screen.dart';

class DayCard extends StatelessWidget {
  const DayCard({
    Key? key,
    required this.day,
  }) : super(key: key);

  final int day;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: () {
          Get.toNamed(VOCA_STEP_PATH, arguments: {
            'day': day,
            'vocas': Voca.getDay(day),
          });
        },
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          margin: const EdgeInsets.only(bottom: 30),
          height: 90,
          width: size.width / 1.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.yellow,
            boxShadow: [cBoxShadow],
            gradient: cLinearGradient,
          ),
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
                        child: LinearProgressIndicator(
                          color: Colors.greenAccent,
                          value: (0.1 * day),
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
                  Text(' 0 / ${Voca.getCountOfDay(day)}'),
                  const SizedBox(height: 20),
                  Center(child: Text('${((0.1 * day) * 100).ceil()} %'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
