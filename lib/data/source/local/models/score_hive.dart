

import 'package:hive/hive.dart';

part 'score_hive.g.dart';

@HiveType(typeId: 11)
class ScoreHive extends HiveObject {

  static String boxKey ='scoreHive';

   @HiveField(0)
   late int totalCount;

   @HiveField(1)
   late int currectCount;

   @HiveField(2)
   late int day;

   @HiveField(3)
   late int step;

   ScoreHive(this.day , this.step, this.totalCount , [this.currectCount = 0]);

   String get key => '$day-$step';

  ScoreHive.fromMap(Map<String, dynamic> map) {
    totalCount = map['totalCount'];
    currectCount = map['currectCount'];
    day = map['day'];
    step = map['step'];
  }

   @override
   String toString() {
    return 'ScoreHive{day: $day,step: $step, currectCount: $currectCount totalCount: $totalCount}';
   }

  
}