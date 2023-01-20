import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/voca/vocas_screen.dart';

const VOCA_STEP_PATH = '/voca-section';

class VocaStepScreen extends StatelessWidget {
  const VocaStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
    final List<Voca> vocas = args['vocas'];
    final int day = args['day'];

    int gridCount = vocas.length % 10 == 0
        ? (vocas.length / 10).floor()
        : (vocas.length / 10).ceil();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day ${day}',
          style: TextStyle(color: Colors.black),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.offAllNamed(HOME_PATH);
          },
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: List.generate(gridCount, (index) {
          return InkWell(
            onTap: () {
              Get.toNamed(VOCAS_PATH, arguments: {
                'day': day,
                'vocas': index + 1 != gridCount
                    ? vocas.sublist((index * 10), (index * 10 + 10))
                    : vocas.sublist((index * 10),
                        (index * 10 + (vocas.length - (gridCount - 1) * 10)))
              });
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [cBoxShadow],
                gradient: cLinearGradient,
              ),
              child: GridTile(
                footer: Center(
                  child: index + 1 != gridCount
                      ? Text('0 / 10')
                      : Text('0 / ${(vocas.length - (gridCount - 1) * 10)}'),
                ),
                child: Center(
                    child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                )),
              ),
            ),
          );
        }),
      ),
    );
  }
}
