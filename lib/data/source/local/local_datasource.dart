import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
class LocalDataSource{


  static Future<void> initialize() async {
    if (GetPlatform.isMobile) {
    await Hive.initFlutter();
  }else if(GetPlatform.isDesktop) {
     Hive.init("C:/Users/kissco/Desktop/learning/jongseo_toeic/assets/hive");
  }
    Hive.registerAdapter(VocabularyAdapter());
    Hive.registerAdapter(ScoreHiveAdapter());
    
    Voca.jsonToObject();
    Voca.listToMap();

    await Hive.openBox<List<Vocabulary>>(Vocabulary.boxKey);
    await Hive.openBox<List<ScoreHive>>(ScoreHive.boxKey);
  }

  
  

  bool hasData ( ) {
    final vocabularyBox =   Hive.box<List<Vocabulary>>(Vocabulary.boxKey);
    return vocabularyBox.length > 0 ;
  }
  
  List<List<Vocabulary>> getAllvocabularies(){
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);
    List<List<Vocabulary>> vocabularies =[];
    for(int i = 1 ; i<= 30 ; i++){
       List<Vocabulary> hiveVoca = vocabularyBox.get(i)! ;
       vocabularies.add(hiveVoca);
    }
    
    return vocabularies;
  }

  List<List<ScoreHive>> getAllScoreHive() {
    final scoureHiveBox = Hive.box<List<ScoreHive>>(ScoreHive.boxKey);
    List<List<ScoreHive>> scoreHiveList= [];
    for(int i = 1 ; i<= 30 ; i++){
       List<ScoreHive> hiveVoca = scoureHiveBox.get(i)! ;
       scoreHiveList.add(hiveVoca);
    }
    return scoreHiveList ;
  }


  Future<void> initVocabulary() async {
    
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);
    final scoreHiveBox = Hive.box<ScoreHive>(ScoreHive.boxKey);

    List<List<Map<String,String>>> days = Voca.days;
    for(int day = 0 ; day < days.length; day++) {
      List<Vocabulary> vocabularys = List.empty(growable: true);
      List<ScoreHive> scoureHives = List.empty(growable: true);
      for(int count = 0 ; count < days[day].length ; count++) { 
        vocabularys.add(Vocabulary.fromMap(days[day][count]));
      }
      // 31
      // stepCount = 3
      // 31 % 10  -> 1
      int stepCount = (vocabularys.length / 10).ceil();
      int step = 1;
      for( ; step <= stepCount ; step++ ) {
          ScoreHive scoreHive = ScoreHive(day, step, 10);
          scoureHives.add(scoreHive);
      }
      
      if(vocabularys.length % 10 != 0) {
        ScoreHive scoreHive  = ScoreHive(day, step, vocabularys.length % 10);
        await scoreHiveBox.put(scoreHive.key, scoreHive);
      }
      
      await vocabularyBox.put(day, vocabularys);
    }
  }

  int numberOfDay() {
    return 30;
  }
  
  List<Vocabulary> getVocabularyOfDay(int day) {
    final vocabularyBox = Hive.box<List<Vocabulary>>(Vocabulary.boxKey);
    print(vocabularyBox);
    
    // List<Vocabulary> vocabularys =  vocabularyBox.get(day);
    
    // print(vocabularys.length);

    // return vocabularys;
    return [];
  }

  List<Vocabulary> getVocabularyOfStep(int day, int step) {
     return  [];
  }
}