
import 'package:get/get.dart';
import 'package:jongseo_toeic/data/source/local/local_datasource.dart';
import 'package:jongseo_toeic/data/source/local/models/score_hive.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';

class VocabularyController extends GetxController{
  
  List<List<Vocabulary>> vocabularies = [];
  late List<ScoreHive> scoures ;
  late LocalDataSource _localDataSource;

  VocabularyController(){
    _localDataSource  = LocalDataSource();
    vocabularies = _localDataSource.getAllvocabularies();
    print(vocabularies);
    scoures = _localDataSource.getAllScoreHive();
  }

  int get countOfDays => vocabularies.length;

  


  

}