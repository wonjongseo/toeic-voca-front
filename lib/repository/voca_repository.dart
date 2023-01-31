import 'package:hive/hive.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';
<<<<<<< HEAD
import 'package:jongseo_toeic/models/voca/voca.dart';
=======
import 'package:jongseo_toeic/models/voca.dart';
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b

class VocaRepository {

  
  Future<void> insertKnownVoca(String id, Voca voca) async {
<<<<<<< HEAD
=======
    print(id);
    print(voca);
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
    Box vocaBox = await Hive.openBox<Voca>(vocaHive);
    vocaBox.put(id, voca);
  }

  Future<void> deleteKnownVoca(List<String> ids)  async{
    if(ids.isEmpty) return ;
    Box vocaBox = await Hive.openBox<Voca>(vocaHive);

    for(String id in ids) {
      vocaBox.delete(id);
    }
<<<<<<< HEAD
  } 

  Future<void> init() async{
    Box vocaBox = await Hive.openBox<Voca>(vocaHive);

    
  }

=======

  } 

>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
}