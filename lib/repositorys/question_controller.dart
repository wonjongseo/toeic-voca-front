import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/models/Question.dart';
import 'package:jongseo_toeic/screens/score/score_screen.dart';

class QuestionController extends GetxController
    with
        SingleGetTickerProviderMixin {
  late AnimationController _animationController;

  late Animation _animation;

  late PageController _pageController;

  bool _isWrong = false;
  List<Question> questions = [];
  List<Question> wrongQuestions = [];

  bool _isAnswered = false;
  int _correctAns = 0;
  late int _selectedAns;
  RxInt _questionNumber = 1.obs;
  int _numOfCorrectAns = 0;
  String _text = 'skip';
  Color _color = Colors.black;
  int _day = 0;
  bool _isEnd = false;

  void toContinue() {
    _pageController.dispose();
    _pageController = PageController();
    _questionNumber = 1.obs;
    _isWrong = false;
    questions = wrongQuestions;
    questions.shuffle();
    wrongQuestions = [];
    _isAnswered = false;
    _correctAns = 0;
    _selectedAns = 0;
    _numOfCorrectAns = 0;
    update();
  }

  PageController get pageController => _pageController;
  Animation get animation => _animation;
  String get text => _text;
  bool get isAnswered => _isAnswered;
  int get correctAns => _correctAns;
  int get selectedAns => _selectedAns;
  RxInt get questionNumber => _questionNumber;
  int get numOfCorrectAns => _numOfCorrectAns;
  Color get color => _color;
  bool get isWrong => _isWrong;
  int get day => _day;
  bool get isEnd => _isEnd;

  set day(int day) {
    _day = day;
  }

  void setQuestions(List<Map<int, List<Voca>>> map) {
    for (var vocas in map) {
      for (var e in vocas.entries) {
        List<Voca> optionsVoca = e.value;
        Voca questionVoca = optionsVoca[e.key];
        Question question = Question(
            question: questionVoca.voca,
            answer: e.key,
            options: optionsVoca.map((e) => e.mean).toList());
        questions.add(question);
      }
    }
  }

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;
    _animationController.stop();
    update();
    if (_correctAns == _selectedAns) {
      _text = 'skip';
      _numOfCorrectAns++;
      Future.delayed(const Duration(milliseconds: 400), () {
        nextQuestion();
      });
    } else {
      if (!wrongQuestions.contains(questions[_questionNumber.value - 1])) {
        wrongQuestions.add(questions[_questionNumber.value - 1]);
      }
      _isWrong = true;
      _color = Colors.pink;
      _text = 'next';

      Future.delayed(const Duration(milliseconds: 1200), () {
        nextQuestion();
      });
    }
  }

  void nextQuestion() {
    if (_questionNumber.value != questions.length) {
      _isWrong = false;
      _text = 'skip';
      _color = Colors.black;
      _isAnswered = false;
      _pageController.nextPage(
          duration: const Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      if(questions.length == numOfCorrectAns)  {
        _isEnd = true;
      }
      Get.to(const ScoreScreen(), arguments: {'day': day});
    }
  }

  void skipQuestion() {
    _isAnswered = true;
    _animationController.stop();
    if (!wrongQuestions.contains(questions[_questionNumber.value - 1])) {
      wrongQuestions.add(questions[_questionNumber.value - 1]);
    }
    _isWrong = true;
    _color = Colors.pink;
    _text = 'next';
    nextQuestion();
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
