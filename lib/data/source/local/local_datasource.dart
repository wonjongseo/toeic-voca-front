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
    await Hive.openBox<Vocabulary>(Vocabulary.myBoxKey);
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

  List<List<Vocabulary>> getAllvocabularies() {
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);

    final vocabularies = List.generate(
            vocabularyBox.length, (index) => vocabularyBox.getAt(index))
        .whereType<List<Vocabulary>>()
        .toList();

    return vocabularies;
  }

  List<List<ScoreHive>> getAllScoreHive() {
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

  Future<void> deleteAllMyVocabulary() async {
    final vocabularyBox = Hive.box<Vocabulary>(Vocabulary.myBoxKey);
    await vocabularyBox.deleteAll(vocabularyBox.keys);
  }

  List<Vocabulary> getVocabularyOfDay(int day) {
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);

    return [];
  }

  List<Vocabulary> getMyVocabulary() {
    final vocabularyBox = Hive.box<Vocabulary>(Vocabulary.myBoxKey);

    final myVocas = List.generate(
            vocabularyBox.length, (index) => vocabularyBox.getAt(index))
        .whereType<Vocabulary>()
        .toList();

    return myVocas;
  }

  Future<void> deleteVocabulary(String id) async {
    final myVocabularyBox = Hive.box<Vocabulary>(Vocabulary.myBoxKey);
    await myVocabularyBox.delete(id);
  }

  Future<Vocabulary> addVocabulary(Vocabulary vocabulary) async {
    final myVocabularyBox = Hive.box<Vocabulary>(Vocabulary.myBoxKey);
    await myVocabularyBox.put(vocabulary.id, vocabulary);

    return vocabulary;
  }

  Future<void> updateVocabulary(int day, Vocabulary vocabulary) async {
    print(' updateVocabulary');
    print('day: ${day}');

    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);

    List<Vocabulary> vocas = vocabularyBox.getAt(day) as List<Vocabulary>;
    for (int index = 0; index < vocas.length; index++) {
      if (vocabulary.id == vocas[index].id) {
        print('before');
        print('vocas[index].isLike: ${vocas[index].isLike}');

        vocas[index].isLike = !vocas[index].isLike;
        print('after');
        print('vocas[index].isLike: ${vocas[index].isLike}');
        break;
      }
    }

    await vocabularyBox.put(day, vocas);
  }

  List<Vocabulary> getVocabularyOfStep(int day, int step) {
    return [];
  }

  Future<void> removeVocabulary(Vocabulary vocabulary) async {
    print(vocabulary);
    final myVocabularyBox = Hive.box<Vocabulary>(Vocabulary.myBoxKey);
    await myVocabularyBox.delete(vocabulary.id);
  }
}
