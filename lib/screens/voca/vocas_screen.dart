import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jongseo_toeic/models/Question.dart';
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

  Voca flipMean(bool isEnglish, int index) {
    Voca voca; 
    if(isEnglish) {
       voca =  Voca(voca: vocas[index]['voca']!,mean: vocas[index]['mean']!);
    }else {
       voca =  Voca(voca: vocas[index]['mean']!,mean: vocas[index]['voca']!);
    }
    voca.id = int.parse(vocas[index]['_id']!);
    return voca;
  }
  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
          children: List.generate(vocas.length, (index) {
        return VocaCard(
          voca: flipMean(isEnglish, index),
          // vocaProvider: vocaProvider,
          // voca: isEnglish
          //     ? Voca(
          //         voca: vocas[index]['voca']!,
          //         mean: vocas[index]['mean']!,
          //         int.parse(vocas[index]['_id']!))
          //     : Voca(
          //         voca: vocas[index]['mean']!,
          //         mean: vocas[index]['voca']!,
          //         int.parse(vocas[index]['_id']!)),
          
        );
      })),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
       title: Text(
          'Day ${day}',
          style: TextStyle(color: Colors.black),
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
            onTap: () async {
              await Question.generateQustion(vocas);
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

  
}
