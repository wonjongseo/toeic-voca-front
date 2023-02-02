import 'dart:math';

import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';


class Question {
  final int answer;
  final String question;
  final List<String> options;

  Question(
      {required this.question, required this.answer, required this.options});

  @override
  String toString() {
    return 'Question{answer: $answer,question: $question, options: $options}';
  }

  static Map<int, List<Vocabulary>> generateAnswer(
    List<Vocabulary> vocas, int currentIndex) {
    Random random = Random();

    List<int> answerIndex = List.empty(growable: true);

    for (int i = 0; i < 4; i++) {
      int randomNumber = random.nextInt(vocas.length);
      while (answerIndex.contains(randomNumber)) {
        randomNumber = random.nextInt(vocas.length);
      }
      answerIndex.add(randomNumber);
    }

    int correctIndex = answerIndex.indexOf(currentIndex);
    if (correctIndex == -1) {
      int randomNumber = random.nextInt(4);
      answerIndex[randomNumber] = currentIndex;
      correctIndex = randomNumber;
    }

    List<Vocabulary> answerVoca = List.empty(growable: true);

    for (int j = 0; j < answerIndex.length; j++) {
      Map<String, String> temp = {
        "id": vocas[answerIndex[j]].id.toString(),
        'voca': vocas[answerIndex[j]].word,
        'mean': vocas[answerIndex[j]].mean,
      };
      Vocabulary voca = Vocabulary.fromMap(temp);
      answerVoca.add(voca);
    }

    return {correctIndex: answerVoca};
  }

  static List<Map<int, List<Vocabulary>>> generateQustion(List<Vocabulary> vocas) {
    List<Map<int, List<Vocabulary>>> map = List.empty(growable: true);

    for (int correntIndex = 0; correntIndex < vocas.length; correntIndex++) {
      Map<int, List<Vocabulary>> voca = generateAnswer(vocas, correntIndex);
      map.add(voca);
    }
    map.shuffle();

    return map;
  }
}
