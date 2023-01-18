import 'dart:io';

import 'package:flutter/material.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/question/quiz/quiz_page.dart';
import 'package:jongseo_toeic/repositorys/voca_provider.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:get/get.dart';

class Vocas extends StatefulWidget {
  final List<Map<String, String>> vocas;
  const Vocas({super.key, required this.vocas});

  @override
  State<Vocas> createState() => _VocasState();
}

class _VocasState extends State<Vocas> {
  VocaProvider vocaProvider = VocaProvider();
  @override
  void initState() {
    super.initState();
    initDB();
  }

  void initDB() async {
    await vocaProvider.initDatabase();
  }

  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
          children: List.generate(widget.vocas.length, (index) {
        return VocaCard(
          vocaProvider: vocaProvider,
          voca: isEnglish
              ? Voca(
                  voca: widget.vocas[index]['voca']!,
                  mean: widget.vocas[index]['mean']!,
                )
              : Voca(
                  voca: widget.vocas[index]['mean']!,
                  mean: widget.vocas[index]['voca']!,
                ),
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
        InkWell(
          onTap: () => Get.to(() => QuizPage()),
          // onTap: () {

          // setState(() {
          //   Navigator.push(context, MaterialPageRoute(builder: (context) {
          //     return ExamScreen(vocas: widget.vocas);
          //   }));
          // });
          // },
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'test',
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
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
