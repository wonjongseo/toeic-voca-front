import 'package:get/get.dart';
import 'package:jongseo_toeic/data/source/local/local_datasource.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabularyList.dart';

class VocabularyController extends GetxController {
  List<Vocabulary> quizVocabularies = [];
  List<Vocabulary> myVocabularies = [];
  List<VocabularyList> db = [];
  late LocalDataSource _localDataSource;
  int day = 0;
  int step = 0;

  VocabularyController() {
    _localDataSource = LocalDataSource();
    init();
  }

  init() {
    db = _localDataSource.getAllHiveData();
    myVocabularies = _localDataSource.getMyVocabulary();
  }

  void updateScore(int day, int step) {
    List<ScoreHive> scores = db[day].scores;
    ScoreHive scoreHive = scores[step];
    if (scoreHive.currectCount == scoreHive.totalCount) {
      return;
    }

    scoreHive.currectCount++;
    scores[step] = scoreHive;

    update();
    _localDataSource.updateScore(scoreHive);
  }

  int get countOfDays => db.length;

  int countOfDaysVoca(int day) {
    return db[day].vocas.length;
  }

  ScoreHive scoreOfStep(int day, int step) {
    List<ScoreHive> scores = db[day].scores;

    this.day = day;
    this.step = step;
    ScoreHive scoreHive = scores[this.step];
    return scoreHive;
  }

  int scoreOfDay(int day) {
    List<ScoreHive> scores = db[day].scores;

    int totalCount = 0;

    for (ScoreHive scoreHive in scores) {
      totalCount += scoreHive.currectCount;
    }
    return totalCount;
  }

  List<Vocabulary> getVocabularyOfDay() {
    return db[day].vocas;
  }

  List<Vocabulary> getVocabularyOfStep(int step) {
    List<Vocabulary> dayOfVocabulary = db[day].vocas;
    if (db[day].scores.length == step + 1) {
      int start = (step * 10);
      int end = start + db[day].scores[step].totalCount;
      quizVocabularies = dayOfVocabulary.sublist(start, end);
      return quizVocabularies;
    } else {
      int start = (step * 10);
      int end = (step * 10 + 10);

      quizVocabularies = dayOfVocabulary.sublist(start, end);
      return quizVocabularies;
    }
  }

  Vocabulary getVoca(String id) {
    Vocabulary vocabulary = db[day].vocas[step];

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
    Vocabulary newVoca = Vocabulary.mine(
        word: vocabulary.word,
        mean: vocabulary.mean,
        id: DateTime.now().microsecondsSinceEpoch.toString());

    myVocabularies.add(newVoca);

    _localDataSource.updateVocabulary(day, vocabulary);
    _localDataSource.addVocabulary(newVoca);

    update();
  }

  void deleteLikeVocabulary(Vocabulary vocabulary) {
    String removeId = '';
    for (int i = 0; i < myVocabularies.length; i++) {
      if (myVocabularies[i].word == vocabulary.word &&
          myVocabularies[i].mean == vocabulary.mean) {
        removeId = myVocabularies[i].id;
        myVocabularies.removeAt(i);
        break;
      }
    }
    _localDataSource.updateVocabulary(day, vocabulary);
    _localDataSource.deleteVocabulary(removeId);

    update();
  }

  void toogleLike(String id) {
    List<Vocabulary> temp = db[day].vocas;

    for (Vocabulary vocabulary in temp) {
      if (vocabulary.id == id) {
        vocabulary.isLike = !vocabulary.isLike;
        break;
      }
    }

    update();
  }

  Vocabulary isReal() {
    return db[day].vocas[step];
  }

  void deleteMyVocabulary(Vocabulary vocabulary) {
    if (!vocabulary.isMine) return;

    for (int i = 0; i < myVocabularies.length; i++) {
      if (myVocabularies[i].id == vocabulary.id) {
        vocabulary = myVocabularies[i];
        myVocabularies.removeAt(i);

        _localDataSource.removeVocabulary(vocabulary);

        break;
      }
    }
    if (vocabulary.id.length > 5) {
      for (int day = 0; day < db.length; day++) {
        for (int index = 0; index < db[day].vocas.length; index++) {
          if (db[day].vocas[index].word == vocabulary.word &&
              db[day].vocas[index].mean == vocabulary.mean) {
            print('vocabulary: ${vocabulary}');
            print('day: ${day}');

            _localDataSource.updateVocabulary(day, db[day].vocas[index]);
            break;
          }
        }
      }
    }
    update();
  }
}
