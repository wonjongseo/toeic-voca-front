import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jongseo_toeic/controllers/vocabulary_controller.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/screens/home/components/day_card.dart';
import 'package:jongseo_toeic/screens/home/components/my_drawer.dart';

const String HOME_PATH = '/';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int daysCount = Voca.getDayCount();
    VocabularyController vocabularyController = Get.put(VocabularyController());
    return Scaffold(
        drawer: const MyDrawer(),
        appBar: _appBar(context),
        body: _body(daysCount));
  }

  Widget _body(int daysCount) {
    return GetBuilder<VocabularyController>(builder: (controller) {
      print(controller.countOfDays);
      return ListView(
        children: List.generate(
          controller.countOfDays,
          (index) {
            if (index == 0) {
              return Container(margin: const EdgeInsets.only(bottom: 20));
            } else {
              // DAY Card
              return DayCard(day: index);
            }
          },
        ),
      );
    });
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      // elevation: 0,
      title: Text(
        'Jongseo Voca',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {
              Get.changeTheme(
                  Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
