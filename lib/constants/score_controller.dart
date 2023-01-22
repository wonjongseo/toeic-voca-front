import 'package:get/get.dart';
import 'package:jongseo_toeic/mvvm/hive/score.dart';
import 'package:jongseo_toeic/mvvm/model/score_repository.dart';

class ScoreController extends GetxController {
  late ScoreRepositry scoreRepositry;
  late Map<String, Map<String, int>> scores;

  ScoreController(int day, int step) {
    init(day, step);
  }

  Future<void> init(int day, int step) async {
    Score score = await selectByStep(day, step);

    Map<String, int> map = {'${step}': score.score};

    scores['${day}'] = map;
  }

  Future<int> selectByDay(int day, int vocaCnt) async {
    return scoreRepositry.selectByDay(day, vocaCnt);
  }

  Future<Score> selectByStep(int day, int step) async {
    return scoreRepositry.selectByStep(day, step);
  }
}
