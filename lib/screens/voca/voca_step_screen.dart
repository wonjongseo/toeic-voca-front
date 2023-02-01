import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/score_controller.dart';
import 'package:jongseo_toeic/models/score/score.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/repository/score_repository.dart';
import 'package:jongseo_toeic/screens/home/home_screen.dart';
import 'package:jongseo_toeic/screens/voca/vocas_screen.dart';

const VOCA_STEP_PATH = '/voca-section';

class VocaStepScreen extends StatelessWidget {
  const VocaStepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = Get.arguments;
     List<Voca> vocas  = [];
    if(args['vocas'] != null) {
        vocas = args['vocas'];
    }
     int day = 0;
    if(args['vocas'] != null) {
        day  = args['day'];
    }
    
   
    // final ScoreRepositry scoreRepositry = ScoreRepositry();

    int gridCount = vocas.length % 10 == 0
        ? (vocas.length / 10).floor()
        : (vocas.length / 10).ceil();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day $day',
            style:Theme.of(context).textTheme.bodyLarge
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
        children: List.generate(
          gridCount,
          (step) {
                  return StepCard(
                      day: day,
                      gridCount: gridCount,
                      vocas: vocas,
                      step: step,
                      score: 2);
          },
        ),
      ),
    );
  }
}

class StepCard extends StatelessWidget {
  const StepCard({
    super.key,
    required this.day,
    required this.gridCount,
    required this.vocas,
    required this.step,
    required this.score,
  });

  final int day, step, score;
  final int gridCount;

  final List<Voca> vocas;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(VOCAS_PATH, arguments: {
          'day': day,
          'step': step,
          'vocas': step + 1 != gridCount
              ? vocas.sublist((step * 10), (step * 10 + 10))
              : vocas.sublist((step * 10),
                  (step * 10 + (vocas.length - (gridCount - 1) * 10)))
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        decoration: cBoxDecoration,
        child: GridTile(
          footer: Center(
            child: step + 1 != gridCount
                ? Text('$score / 10')
                : Text('$score / ${(vocas.length - (gridCount - 1) * 10)}'),
          ),
          child: Center(
              child: Text(
            (step + 1).toString(),
            style:Theme.of(context).textTheme.displayMedium
          )),
        ),
      ),
    );
  }
}
