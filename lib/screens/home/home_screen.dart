import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/mvvm/model/score_repository.dart';
import 'package:jongseo_toeic/screens/home/components/day_card.dart';
import 'package:jongseo_toeic/screens/my/my_screen.dart';

const String HOME_PATH = '/';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  late ScoreRepositry scoreRepositry;

  @override
  Widget build(BuildContext context) {
    int daysCount = Voca.getDayCount();
    scoreRepositry = ScoreRepositry();

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
        body: ListView(
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
        ));
  }
}
