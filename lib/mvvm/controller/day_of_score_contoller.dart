import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/mvvm/hive/score.dart';
import '../model/day_of_score_repository.dart';

class DayOfScoreController extends GetxController {
  late DayOfScoreRepository _dayOfScoreRepository;

  late Map<String, List<Score>> _scores;
  Map<String, List<Score>> get scores => _scores;

  DayOfScoreController() {
    _dayOfScoreRepository = DayOfScoreRepository();
  }

  void setDayOfStepScore(int day, int step, int correctNumber) {
    Score score = Score(day: day, step: step, score: correctNumber);
    _dayOfScoreRepository.updateCachedScore(score);
  }

  int getScoreOfDay(int day) {
    List<Score> scoreOfDay = _dayOfScoreRepository.getScoresOfDay(day);

    int totalScore = 0;
    for (Score score in scoreOfDay) {
      totalScore += score.score;
    }
    return totalScore;
  }

  void updateScore(int day, int step, int correctNumber) {
    print('asdfasdf');
    Score score = Score(day: day, step: step, score: correctNumber);
    _dayOfScoreRepository.update(score);

    update();
  }

  int getScoreOfStep(int day, int step) {
    int totalScore = 0;
    List<Score> scoreOfDay = _dayOfScoreRepository.getScoresOfDay(day);

    for (Score score in scoreOfDay) {
      if (score.step == step) {
        totalScore += score.score;
      }
    }
    return totalScore;
  }
}
