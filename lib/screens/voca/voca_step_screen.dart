import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/score_controller.dart';
import 'package:jongseo_toeic/controllers/vocabulary_controller.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
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
    VocabularyController vocabularyController = Get.put(VocabularyController());
    var arguments = Get.arguments;
    print(arguments['day']);
    if (arguments != null && arguments['day'] != null) {
      vocabularyController.day = arguments['day'];
    }

    List<Vocabulary> vocabularies = vocabularyController.getVocabularyOfDay();

    int gridCount = vocabularies.length % 10 == 0
        ? (vocabularies.length / 10).floor()
        : (vocabularies.length / 10).ceil();

    return Scaffold(
      appBar: AppBar(
        title: Text('Day ${vocabularyController.day}',
            style: Theme.of(context).textTheme.bodyLarge),
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Get.offNamed(HOME_PATH);
            // Get.offAllNamed(HOME_PATH , bin);
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
              day: vocabularyController.day,
              gridCount: gridCount,
              vocabularies: vocabularies,
              step: step,
            );
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
    required this.vocabularies,
    required this.step,
  });

  final int day, step;
  final int gridCount;
  final List<Vocabulary> vocabularies;

  @override
  Widget build(BuildContext context) {
    VocabularyController vocabularyController =
        Get.find<VocabularyController>();
    return InkWell(
      onTap: () {
        vocabularyController.updateScore(day, step);

        // Get.toNamed(VOCAS_PATH, arguments: {
        //   'day': day,
        //   'step': step,
        //   'vocas': step + 1 != gridCount
        //       ? vocabularies.sublist((step * 10), (step * 10 + 10))
        //       : vocabularies.sublist((step * 10),
        //           (step * 10 + (vocabularies.length - (gridCount - 1) * 10)))
        // });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        decoration: cBoxDecoration,
        child: GetBuilder<VocabularyController>(builder: (controller) {
          ScoreHive scoreHive = controller.scoreOfStep(day, step);
          return GridTile(
            footer: Center(
              child:
                  Text('${scoreHive.currectCount} / ${scoreHive.totalCount}'),
            ),
            child: Center(
                child: Text((step + 1).toString(),
                    style: Theme.of(context).textTheme.displayMedium)),
          );
        }),
      ),
    );
  }
}
