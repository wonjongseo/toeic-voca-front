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
}
