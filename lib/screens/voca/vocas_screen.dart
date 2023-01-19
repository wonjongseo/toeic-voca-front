import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/repositorys/voca_provider.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:get/get.dart';

const String VOCAS_PATH = '/vocas';

class VocasScreen extends StatefulWidget {
  @override
  State<VocasScreen> createState() => _VocasScreenState();
}

class _VocasScreenState extends State<VocasScreen> {
  late int day;
  late List<Map<String, String>> vocas;
  List<Map<int, List<Voca>>> map = List.empty(growable: true);
  QuestionController _questionController = Get.put(QuestionController());

  // VocaProvider vocaProvider = VocaProvider();
  @override
  void initState() {
    super.initState();
    final args = Get.arguments;
    vocas = args['vocas'];
    day = args['day'];
    initDB();
  }

  void initDB() async {
    // await vocaProvider.initDatabase();
  }

  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
          children: List.generate(vocas.length, (index) {
        return VocaCard(
          // vocaProvider: vocaProvider,
          voca: isEnglish
              ? Voca(
                  voca: vocas[index]['voca']!,
                  mean: vocas[index]['mean']!,
                  int.parse(vocas[index]['_id']!))
              : Voca(
                  voca: vocas[index]['mean']!,
                  mean: vocas[index]['voca']!,
                  int.parse(vocas[index]['_id']!)),
        );
      })),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
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
        if (vocas.length > 4)
          InkWell(
            // onTap:
            onTap: () async {
              await generateQustion();
              _questionController.setQuestions(map);
              Get.to(() => QuizScreen(), arguments: {'day': day});
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

  Map<int, List<Voca>> generateAnswer(int currentIndex) {
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
      Voca voca = Voca.fromMap(vocas[answerIndex[j]]);
      answerVoca.add(voca);
    }

    return {correctIndex: answerVoca};
  }

  Future<void> generateQustion() async {
    for (int correntIndex = 0; correntIndex < vocas.length; correntIndex++) {
      Map<int, List<Voca>> voca = generateAnswer(correntIndex);
      map.add(voca);
    }
    map.shuffle();
  }
}
