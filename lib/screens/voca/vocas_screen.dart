import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jongseo_toeic/controllers/question_controller.dart';
import 'package:jongseo_toeic/controllers/vocabulary_controller.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
import 'package:jongseo_toeic/models/Question.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:get/get.dart';

const String VOCAS_PATH = '/vocas';

class VocasScreen extends StatefulWidget {
  const VocasScreen({super.key});

  @override
  State<VocasScreen> createState() => _VocasScreenState();
}

class _VocasScreenState extends State<VocasScreen> {
  late int step;
  late List<Vocabulary> vocas;
  final QuestionController _questionController = Get.put(QuestionController());
  VocabularyController _vocabularyControlleray =
      Get.find<VocabularyController>();
  int day = 0;
  @override
  void initState() {
    super.initState();
    final args = Get.arguments;
    step = args['step'];
    _questionController.step = step;
    _vocabularyControlleray.step = step;
    day = _vocabularyControlleray.day;
    vocas = _vocabularyControlleray.getVocabularyOfStep(step);
  }

  // Vocabulary flipMean(bool isEnglish, int index) {
  //   Vocabulary voca;
  //   if (isEnglish) {
  //     voca = Vocabulary(
  //         word: vocas[index].word,
  //         mean: vocas[index].mean,
  //         id: vocas[index].id);
  //   } else {
  //     voca = Vocabulary(
  //         word: vocas[index].mean,
  //         mean: vocas[index].word,
  //         id: vocas[index].id);
  //   }
  //   return voca;
  // }

  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return _body(context);
  }

  Scaffold _body(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
        children: List.generate(
          vocas.length,
          (index) {
            return VocaCard(voca: vocas[index]);
          },
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Day ${day + 1}',
        style: const TextStyle(color: Colors.black),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        if (vocas.length > 3)
          InkWell(
            // onTap:
            onTap: () {
              List<dynamic> knownsList = [];
              if (knownsList.isNotEmpty) {
                Get.dialog(AlertDialog(
                  // title: const Text(''),
                  content: Text(
                      '${vocas.length - knownsList.length} 가 남아 있습니다. 이어 보시겠습니까 ?'),
                  actions: [
                    TextButton(
                        onPressed: () {
                          for (var e in knownsList) {
                            vocas.removeAt(e);
                          }
                          _questionController.map =
                              Question.generateQustion(vocas);
                          _questionController.setQuestions();
                          Get.toNamed(QUIZ_PATH,
                              arguments: {'day': day, 'step': step});
                        },
                        child: const Text('진행')),
                    TextButton(
                        onPressed: () {
                          _questionController.map =
                              Question.generateQustion(vocas);
                          _questionController.setQuestions();
                          Get.toNamed(QUIZ_PATH,
                              arguments: {'day': day, 'step': step});
                        },
                        child: const Text('취소'))
                  ],
                ));
              } else {
                _questionController.map = Question.generateQustion(vocas);
                _questionController.setQuestions();
                Get.toNamed(QUIZ_PATH, arguments: {'day': day, 'step': step});
              }
            },

            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/book.svg',
                  height: 30,
                ),
              ),
            ),
          ),
        InkWell(
          onTap: () {
            setState(() {
              isEnglish = !isEnglish;
            });
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.language,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
