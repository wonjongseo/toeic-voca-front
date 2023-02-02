import 'package:get/get.dart';
import 'package:jongseo_toeic/data/source/local/local_datasource.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';

class VocabularyController extends GetxController {
  List<List<Vocabulary>> vocabularies = [];
  List<List<ScoreHive>> scores = [];
  List<Vocabulary> quizVocabularies = [];

  late LocalDataSource _localDataSource;
  int day = 0;
  int step = 0;

  VocabularyController() {
    _localDataSource = LocalDataSource();
    init();
  }

  init() async {
    vocabularies =
        await _localDataSource.getAllvocabularies() as List<List<Vocabulary>>;
    scores = await _localDataSource.getAllScoreHive();
  }

  void updateScore(int day, int step) {
    ScoreHive scoreHive = scores[day][step];
    if (scoreHive.currectCount == scoreHive.totalCount) {
      return;
    }

    scoreHive.currectCount++;
    scores[day][step] = scoreHive;

    update();
    _localDataSource.updateScore(scoreHive);
  }

  int get countOfDays => vocabularies.length;

  int countOfDaysVoca(int day) {
    return vocabularies[day].length;
  }

  ScoreHive scoreOfStep(int day, int step) {
    this.day = day;
    this.step = step;
    ScoreHive scoreHive = scores[this.day][this.step];
    return scoreHive;
  }

  int scoreOfDay(int day) {
    List<ScoreHive> scoreHiveList = scores[day];

    int totalCount = 0;

    for (ScoreHive scoreHive in scoreHiveList) {
      totalCount += scoreHive.currectCount;
    }
    return totalCount;
  }

  List<Vocabulary> getVocabularyOfDay() {
    return vocabularies[day];
  }

  List<Vocabulary> getVocabularyOfStep(int day, int step) {
    this.day = day;
    this.step = step;

    List<Vocabulary> dayOfVocabulary = vocabularies[day];

    if (scores[day][step].totalCount != 0) {
      int start = (step * 10);
      return [];
    } else {
      int start = (step * 10);
      int end = (step * 10 + 10);

      quizVocabularies = dayOfVocabulary.sublist(start, end);
      return quizVocabularies;
    }
  }
}
