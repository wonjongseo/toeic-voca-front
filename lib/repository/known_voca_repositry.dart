import 'package:hive/hive.dart';
import 'package:jongseo_toeic/constants/hive_constants.dart';

class KnownVocaRepositry {

  Future<void> insertKnownVoca(String key, int knwonVocaIndex) async {
<<<<<<< HEAD
    
=======
    print(key);
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
    Box vocaBox = await Hive.openBox(knownVocaHive);

    List? knownsList =  vocaBox.get(key);
    if( knownsList == null) {
      List newList = List.empty(growable: true);
      newList.add(knwonVocaIndex);
      vocaBox.put(key, newList);
      
      List selected = vocaBox.get(key);
<<<<<<< HEAD
=======
     print(selected);
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
      return ;
    }
    if(knownsList.contains(knwonVocaIndex)) return ;

    knownsList.add(knwonVocaIndex);

    vocaBox.put(key, knownsList);
    
     List selected = vocaBox.get(key);
<<<<<<< HEAD
  }

  Future<List> selectKnwonVocas(String key) async{
    
    Box vocaBox = await Hive.openBox(knownVocaHive);
    List? knownsList =  vocaBox.get(key);
    
=======
     print(selected);
  }

  Future<List> selectKnwonVocas(String key) async{
    print(key);
    Box vocaBox = await Hive.openBox(knownVocaHive);
    List? knownsList =  vocaBox.get(key);
    print(knownsList);
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
    if(knownsList == null) {
      List newList = List.empty(growable: true);
      vocaBox.put(key, newList);
       List selected = vocaBox.get(key);
<<<<<<< HEAD
       
       
=======
       print("selected");
       print(selected);
>>>>>>> b3cbd8f1915788e7ae80447a360c194fc6e9224b
      return selected ;
    }
    return knownsList;
  }

  Future<void> deleteKnownVoca(List<String> keys)  async{
    if(keys.isEmpty) return ;
    Box vocaBox = await Hive.openBox(knownVocaHive);

    for(String key in keys) {
      vocaBox.delete(key);
    }

  } 

}