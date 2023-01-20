import 'dart:math';

import 'package:jongseo_toeic/models/voca.dart';

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

  static Map<int, List<Voca>> generateAnswer(List<Voca> vocas, int currentIndex) {
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

    List<Voca> answerVoca = List.empty(growable: true);

    for (int j = 0; j < answerIndex.length; j++) {
      Map<String, dynamic> temp = {
        "id" : vocas[answerIndex[j]].id.toString(),
        'voca': vocas[answerIndex[j]].voca,
        'mean': vocas[answerIndex[j]].mean,
      };
      Voca voca = Voca.fromMap(temp);
      answerVoca.add(voca);
    }

    return {correctIndex: answerVoca};
  }

  static List<Map<int, List<Voca>>> generateQustion(List<Voca> vocas) {
    List<Map<int, List<Voca>>> map = List.empty(growable: true);
    
    for (int correntIndex = 0; correntIndex < vocas.length; correntIndex++) {
      Map<int, List<Voca>> voca = generateAnswer(vocas, correntIndex);
      map.add(voca);
    }
    map.shuffle();

    return map;
  }
}
