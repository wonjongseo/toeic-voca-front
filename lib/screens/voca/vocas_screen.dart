import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jongseo_toeic/constants/question_controller.dart';
import 'package:jongseo_toeic/models/Question.dart';
import 'package:jongseo_toeic/models/score/score.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/repository/known_voca_repositry.dart';
import 'package:jongseo_toeic/repository/score_repository.dart';
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
  late int day;
  late int step;
  late List<Voca> vocas;
  final QuestionController _questionController = Get.put(QuestionController());
  KnownVocaRepositry knownVocaRepositry = KnownVocaRepositry();
  @override
  void initState() {
    super.initState();
    final args = Get.arguments;
    vocas = args['vocas'];
    day = args['day'];
    step = args['step'];
    _questionController.day = day;
    _questionController.step = step;
  }

  Voca flipMean(bool isEnglish, int index) {
    Voca voca;
    if (isEnglish) {
      voca = Voca(
          voca: vocas[index].voca,
          mean: vocas[index].mean,
          id: vocas[index].id);
    } else {
      voca = Voca(
          voca: vocas[index].mean,
          mean: vocas[index].voca,
          id: vocas[index].id);
    }

    return voca;
  }

  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: knownVocaRepositry.selectKnwonVocas('$day-$step'),
      builder: (context, snapshot) {
      if(snapshot.hasError) {
        return SafeArea(child: Text(snapshot.error.toString()));
      }
      return _body(context,snapshot);
    });
  }

  Scaffold _body(BuildContext context,AsyncSnapshot snapshot) {
    return Scaffold(
    appBar: _appBar(context, snapshot),
    body: ListView(
      children: List.generate(
        vocas.length,
        (index) {
          return VocaCard(voca: flipMean(isEnglish, index));
        },
      ),
    ),
  );
  }

  AppBar _appBar(BuildContext context , AsyncSnapshot snapshot) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(
        'Day $day',
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
              List<dynamic> knownsList = snapshot.data as List<dynamic>;
              if(knownsList.isNotEmpty) {
                Get.dialog(
                  AlertDialog(
                    // title: const Text(''),
                    content:  Text('${vocas.length - knownsList.length} 가 남아 있습니다. 이어 보시겠습니까 ?'),
                    actions: [
                      TextButton(onPressed: () {
                          for (var e in knownsList) {
                            vocas.removeAt(e);
                         }
                        _questionController.map = Question.generateQustion(vocas);
                        _questionController.setQuestions();
                         Get.toNamed(QUIZ_PATH, arguments: {'day': day, 'step': step});
                      }, child: const Text('진행')),
                       TextButton(onPressed: () {
                        _questionController.map = Question.generateQustion(vocas);
                        _questionController.setQuestions();
                         Get.toNamed(QUIZ_PATH, arguments: {'day': day, 'step': step});
                       }, child: const Text('취소'))
                    ],
                  )
                );
              }
              else {
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
