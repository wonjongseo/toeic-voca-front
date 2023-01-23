import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';

part 'score.g.dart';

@HiveType(typeId: 2)
class Score {
  @HiveField(0)
  int day;
  @HiveField(1)
  int step;
  @HiveField(2)
  int score;
  @HiveField(3)
  late int totalCnt;

  // Score({required this.day, required this.step, required this.score, required this.totalCnt});
  Score({required this.day, required this.step, required this.score});

  String getKey() {
    return '${day}-${step}';
  }

  @override
  String toString() {
    // return 'Score{day: $day,step: $step, score: $score, totalCnt :$totalCnt}';
    return 'Score{day: $day,step: $step, score: $score}';
  }
}
