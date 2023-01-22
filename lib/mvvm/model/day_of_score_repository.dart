import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';
import 'package:jongseo_toeic/mvvm/hive/score.dart';

class DayOfScoreRepository {
  late Box<Score> _scoreBox;
  DayOfScoreRepository() {
    initBox();
  }

  initBox() async {
    _scoreBox = await Hive.openBox<Score>(scoreHive);
  }

  void update(Score score) {
    _scoreBox.put(score.day, score);
  }

  List<Score> getAllScore() {
    return _scoreBox.values.toList();
  }

  List<Score> getCachedScores() {
    return _scoreBox.values.toList();
  }

  void updateCachedScore(Score score) {
    _scoreBox.put(score.day, score);
  }

  List<Score> getScoresOfDay(int day) {
    return _scoreBox.values.toList();
  }
}



/**
 import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';
import 'package:jongseo_toeic/mvvm/hive/score.dart';

class DayOfScoreRepository {
  Future<List<Score>> getCachedScores() async {
    Box<Score> _scoreBox = await Hive.openBox<Score>(vocaHive);
    return _scoreBox.values.toList();
  }

  Future<void> updateCachedScore(Score score) async {
    Box<Score> _scoreBox = await Hive.openBox<Score>(vocaHive);
    _scoreBox.put(score.day, score);
  }

  Future<void> getScoresOfDay(int day) async {}
}

 */