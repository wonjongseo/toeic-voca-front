import 'package:get/get.dart';
import 'package:jongseo_toeic/models/score/score.dart';
import 'package:jongseo_toeic/repository/score_repository.dart';

class ScoreController extends GetxController {
  late ScoreRepositry scoreRepositry;
  late List<List<Score>> scores ;

  ScoreController() {
    scoreRepositry = ScoreRepositry();
    init();
  }
  

  Future<void> init() async {
    scores  = await scoreRepositry.hiveToList();
    update();
  }
  void updateScore(int day, int step, int value) {
    scores[day][step].score =value;
    update();
  }
 
  int getScoreOfDay(int day) {
    int totalScore = 0;
    List<Score> tmp =  scores[day];
    
    for(Score score in tmp) {
      totalScore += score.score;
    }
    return  totalScore;
  }
  int getScoreOfStep(int day, int step) {
    return scores[day][step].score;
  }  


  Future<int> selectByDay(int day, int vocaCnt) async {
    return scoreRepositry.selectByDay(day, vocaCnt);
  }

  Future<Score> selectByStep(int day, int step)  {
    return scoreRepositry.selectByStep(day, step);
  }
}
