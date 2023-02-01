import 'package:hive/hive.dart';

part 'vocabulary.g.dart';

@HiveType(typeId: 10)
class Vocabulary extends HiveObject {

  static const String boxKey = 'vocabulary';

  @HiveField(0)
  late String word;

  @HiveField(1)
  late String mean;
  
  @HiveField(2)
  late int id;
  
  @HiveField(3)
  late bool isLike;
  
  @HiveField(4)
  late bool isKnown;

  Vocabulary({required this.word, required this.mean, required this.id, isLike, isKnown}) ;

  Vocabulary.fromMap(Map<String, dynamic> map) {
    word = map['voca'] ?? '';
    mean = map['mean'] ?? '';
    id = int.parse(map['id']);
    isLike = false;
    isKnown =  false;
  }

  @override
  String toString() {
    return 'Vocabulary{id: $id,word: $word, mean: $mean isLike: $isLike, isKnown: $isKnown}';
  }

 
}