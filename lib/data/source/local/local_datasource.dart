import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:path_provider/path_provider.dart';

class LocalDataSource {
  static Future<void> initialize() async {
    if (GetPlatform.isMobile) {
      await Hive.initFlutter();
    } else if (GetPlatform.isDesktop) {
      Hive.init("C:/Users/kissco/Desktop/learning/jongseo_toeic/assets/hive");
    }
    Hive.registerAdapter(VocabularyAdapter());
    Hive.registerAdapter(ScoreHiveAdapter());

    Voca.jsonToObject();
    Voca.listToMap();

    await Hive.openBox<List<Vocabulary>>(Vocabulary.boxKey);
    await Hive.openBox<List<ScoreHive>>(ScoreHive.boxKey);
  }

  Future<void> updateScore(ScoreHive newScoreHive) async {
    int day = newScoreHive.day;
    final scoreHiveBox = Hive.box<List<ScoreHive>>(ScoreHive.boxKey);

    List<ScoreHive> scoreList = scoreHiveBox.get(day)!;

    for (int step = 0; step < scoreList.length; step++) {
      if (step + 1 == newScoreHive.step) {
        scoreList[step] = newScoreHive;
        break;
      }
    }
    await scoreHiveBox.put(day, scoreList);
  }

  Future<bool> hasData() async {
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey)!;
    final scoreHiveBox = Hive.box<List<ScoreHive>>(ScoreHive.boxKey)!;

    return vocabularyBox.length > 0 && scoreHiveBox.length > 0;
  }

  Future<List<dynamic>> getAllvocabularies() async {
    print('1');
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);
    print('2');
    final vocabularies = List.generate(
        vocabularyBox.length, (index) => vocabularyBox.getAt(index)).toList();

    print(vocabularies);
    return vocabularies;
  }

  Future<List<List<ScoreHive>>> getAllScoreHive() async {
    final scoreHiveBox = Hive.box<List<ScoreHive>>(ScoreHive.boxKey);
    List<List<ScoreHive>> scoreHiveList =
        List.generate(scoreHiveBox.length, (index) => scoreHiveBox.getAt(index))
            .whereType<List<ScoreHive>>()
            .toList();
    return scoreHiveList;
  }

  Future<void> initVocabulary() async {
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);
    final scoreHiveBox = Hive.box<List<ScoreHive>>(ScoreHive.boxKey);

    List<List<Map<String, String>>> days = Voca.days;
    for (int day = 0; day < days.length; day++) {
      List<Vocabulary> vocabularys = List.empty(growable: true);
      List<ScoreHive> scoreHives = List.empty(growable: true);
      for (int count = 0; count < days[day].length; count++) {
        vocabularys.add(Vocabulary.fromMap(days[day][count]));
      }

      int stepCount = (vocabularys.length / 10).floor();
      int step = 1;
      for (; step <= stepCount; step++) {
        ScoreHive scoreHive = ScoreHive(day, step, 10);
        scoreHives.add(scoreHive);
      }

      if (vocabularys.length % 10 != 0) {
        ScoreHive scoreHive = ScoreHive(day, step, vocabularys.length % 10);

        scoreHives.add(scoreHive);
      }
      await scoreHiveBox.put(day, scoreHives);
      await vocabularyBox.put(day, vocabularys);
    }
  }

  int numberOfDay() {
    return 30;
  }

  List<Vocabulary> getVocabularyOfDay(int day) {
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);

    return [];
  }

  List<Vocabulary> getVocabularyOfStep(int day, int step) {
    return [];
  }
}
