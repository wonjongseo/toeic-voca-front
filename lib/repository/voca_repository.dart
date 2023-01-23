import 'package:hive/hive.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';
import 'package:jongseo_toeic/models/voca.dart';

class VocaRepository {

  
  Future<void> insertKnownVoca(String id, Voca voca) async {
    print(id);
    print(voca);
    Box vocaBox = await Hive.openBox<Voca>(vocaHive);
    vocaBox.put(id, voca);
  }

  Future<void> deleteKnownVoca(List<String> ids)  async{
    if(ids.isEmpty) return ;
    Box vocaBox = await Hive.openBox<Voca>(vocaHive);

    for(String id in ids) {
      vocaBox.delete(id);
    }

  } 

}