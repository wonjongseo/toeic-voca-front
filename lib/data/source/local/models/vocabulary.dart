import 'package:hive/hive.dart';

part 'vocabulary.g.dart';

@HiveType(typeId: 10)
class Vocabulary extends HiveObject {
  static const String boxKey = 'vocabulary';
  static const String myBoxKey = 'myvocabulary';

  @HiveField(0)
  late String word;

  @HiveField(1)
  late String mean;

  @HiveField(2)
  late String id;

  @HiveField(3)
  bool isLike = false;

  @HiveField(4)
  bool isKnown = false;

  @HiveField(5)
  bool isMine = false;

  Vocabulary(
      {required this.word,
      required this.mean,
      required this.id,
      isLike,
      isKnown});

  Vocabulary.fromMap(Map<String, dynamic> map) {
    word = map['voca'] ?? '';
    mean = map['mean'] ?? '';
    id = map['id'];
    isLike = false;
    isKnown = false;
  }

  Vocabulary.mine({required this.id, required this.word, required this.mean}) {
    Vocabulary(id: id, word: word, mean: mean, isKnown: false, isLike: false);
    isMine = true;
  }
  @override
  String toString() {
    return 'Vocabulary{id: $id,word: $word, mean: $mean isLike: $isLike, isKnown: $isKnown, isMine :${isMine}}';
  }
}
