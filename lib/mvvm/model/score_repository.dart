import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';
import 'package:jongseo_toeic/mvvm/hive/score.dart';

class ScoreRepositry {
  Future<void> insert(Score score) async {
    Box<Score> scoreBox = await Hive.openBox<Score>(scoreHive);
    scoreBox.put(score.getKey(), score);
    Score? s = scoreBox.get(score.getKey());
  }

  Future<int> selectByDay(int day, int vocaCnt) async {
    int count = 0;
    int stepCount = (vocaCnt / 10).ceil();
    for (int step = 0; step < stepCount; step++) {
      Score tmp = await selectByStep(day, step);
      count += tmp.score;
    }

    return count;
  }

  Future<Score> selectByStep(int day, int step) async {
    Box<Score> scoreBox = await Hive.openBox<Score>(scoreHive);
    String key = '${day}-${step}';

    Score? score = scoreBox.get(key);
    if (score == null) {
      score = Score(day: day, step: step, score: 0);
      scoreBox.put(key, score);
    }
    return score;
  }
}
