import 'package:get/get.dart';
import 'package:jongseo_toeic/data/source/local/local_datasource.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';

class VocabularyController extends GetxController {
  List<List<Vocabulary>> vocabularies = [];
  List<List<ScoreHive>> scores = [];
  List<Vocabulary> quizVocabularies = [];
  List<Vocabulary> myVocabularies = [];

  late LocalDataSource _localDataSource;
  int day = 0;
  int step = 0;

  VocabularyController() {
    _localDataSource = LocalDataSource();
    init();
  }

  init() {
    vocabularies = _localDataSource.getAllvocabularies();
    scores = _localDataSource.getAllScoreHive();
    myVocabularies = _localDataSource.getMyVocabulary();
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

  List<Vocabulary> getVocabularyOfStep(int step) {
    List<Vocabulary> dayOfVocabulary = vocabularies[day];
    if (scores[day].length == step + 1) {
      int start = (step * 10);
      int end = start + scores[day][step].totalCount;
      quizVocabularies = dayOfVocabulary.sublist(start, end);
      return quizVocabularies;
    } else {
      int start = (step * 10);
      int end = (step * 10 + 10);

      quizVocabularies = dayOfVocabulary.sublist(start, end);
      return quizVocabularies;
    }
  }

  Vocabulary getVoca() {
    Vocabulary vocabulary = vocabularies[day][step];

    print('vocabulary : ${vocabulary}');

    return vocabulary;
  }

  Vocabulary addMyVocabulary(String word, String mean) {
    Vocabulary vocabulary = Vocabulary.mine(
        word: word,
        mean: mean,
        id: DateTime.now().microsecondsSinceEpoch.toString());

    myVocabularies.add(vocabulary);
    update();

    _localDataSource.addVocabulary(vocabulary);
    return vocabulary;
  }

  void addLikeVocabulary(Vocabulary vocabulary) {
    toogleLike(vocabulary);

    Vocabulary newVoca = Vocabulary.mine(
        word: vocabulary.word,
        mean: vocabulary.mean,
        id: DateTime.now().microsecondsSinceEpoch.toString());

    myVocabularies.add(newVoca);

    _localDataSource.updateVocabulary(day, vocabulary);
    _localDataSource.addVocabulary(newVoca);
  }

  void toogleLike(Vocabulary vocabulary) {
    Vocabulary vocabulary = vocabularies[day][step];
    vocabulary.isLike = !vocabulary.isLike;

    vocabularies[day][step] = vocabulary;

    update();
  }

  void deleteMyVocabulary(Vocabulary vocabulary) {
    if (!vocabulary.isMine) return;

    for (int i = 0; i < myVocabularies.length; i++) {
      if (myVocabularies[i].id == vocabulary.id) {
        vocabulary = myVocabularies[i];
        myVocabularies.removeAt(i);
        break;
      }
    }

    update();

    _localDataSource.removeVocabulary(vocabulary);
  }
}
