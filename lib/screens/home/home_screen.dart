import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/score_controller.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/screens/home/components/day_card.dart';
import 'package:jongseo_toeic/screens/my/my_screen.dart';

const String HOME_PATH = '/';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
 
  @override
  Widget build(BuildContext context) {
    int daysCount = Voca.getDayCount();
    
    ScoreController scoreController = Get.find<ScoreController>();

    return Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Jongseo Voca',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    Get.toNamed(MY_PATH);
                  },
                  icon: const Icon(
                    Icons.person,
                    size: 33,
                    color: Colors.black,
                  ),
                ),
              )
            ]),
        body: GetBuilder<ScoreController>(
          
          builder: (context) {
            return ListView(
              children: List.generate(
                daysCount,
                (index) {
                  if (index == 0) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                    );
                  } else {
                    return DayCard(day: index);
                  }
                },
              ),
            );
          }
        ));
  }
}
