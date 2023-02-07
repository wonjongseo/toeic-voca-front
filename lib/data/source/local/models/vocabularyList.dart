import 'package:hive/hive.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';

part 'vocabularyList.g.dart';

@HiveType(typeId: 13)
class VocabularyList extends HiveObject {
  static String boxKey = 'vocabularyList';
  @HiveField(0)
  List<Vocabulary> vocas;

  @HiveField(1)
  List<ScoreHive> scores;

  VocabularyList({required this.vocas, required this.scores});
}
