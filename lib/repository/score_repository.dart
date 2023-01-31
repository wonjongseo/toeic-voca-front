import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';
import 'package:jongseo_toeic/models/score/score.dart';
<<<<<<< HEAD
import 'package:jongseo_toeic/models/voca/voca.dart';

class ScoreRepositry {
  
  Future<void> insert(int day , int step , int correctNumber) async {
    String key = '$day-$step';
    Box<Score> scoreBox = await Hive.openBox<Score>(scoreHive);
=======

class ScoreRepositry {

//  Future<void> insert(Score score) async {
//    
   
//     scoreBox.put(score.getKey(), score);
//   }
  Future<void> insert(int day , int step , int correctNumber) async {
    String key = '$day-$step';
     Box<Score> scoreBox = await Hive.openBox<Score>(scoreHive);
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b

    Score? score = scoreBox.get(key);
    if(score == null) {
      score = Score(day: day, step: step, score: correctNumber);
    }
    else {
      int newScore = score.score + correctNumber;
      score.score =newScore;
<<<<<<< HEAD
    }
    scoreBox.put(key, score);
=======
      scoreBox.put(key, score);
    }
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
  }

  Future<int> update(String key , int succeessCnt) async {
    Box<Score> scoreBox = await Hive.openBox<Score>(scoreHive);
    Score? score = scoreBox.get(key); 
    if(score == null) return -1;
    if(score.totalCnt < succeessCnt) return -1;
    score.score = succeessCnt;
    scoreBox.put(key, score);
    return succeessCnt;
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

  Future<void > remove(String key) async {
    Box<Score> scoreBox = await Hive.openBox<Score>(scoreHive);
    scoreBox.delete(key);
  }
<<<<<<< HEAD

  Future<List<List<Score>>> hiveToList() async {
    int day = Voca.getDayCount();

    List<List<Score>> scores = List.empty(growable: true);
    scores.add([]);
    for(int i = 1 ; i< 31 ; i++) {
      scores.add(List.empty(growable: true));
      int step = Voca.getStepOfDay(i);
      for(int j = 1 ; j <= step ; j++) {
          Score score = await selectByStep(i + 1, j);
        
          scores[i].add(score);
      }
    }

    return scores;
    
  }
=======
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
}
