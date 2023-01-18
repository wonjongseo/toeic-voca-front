import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/voca.dart';

class ExamScreen extends StatefulWidget {
  final List<Map<String, String>> vocas;
  const ExamScreen({super.key, required this.vocas});

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  Color color = Colors.red;
  int index = 0;
  int corretIndex = 0;
  List<int> answerIndexList = [0, 1, 2, 4];

  List<int> generateAnswer() {
    Random random = Random();
    List<int> answerIndex = List.empty(growable: true);

    for (int i = 0; i < 4; i++) {
      int randomNumber = random.nextInt(widget.vocas.length);
      while (answerIndex.contains(randomNumber)) {
        randomNumber = random.nextInt(widget.vocas.length);
      }
      answerIndex.add(randomNumber);
    }

    if (!answerIndex.contains(index)) {
      int correctNumber = random.nextInt(4);
      answerIndex[correctNumber] = index;
      corretIndex = correctNumber;
    } else {
      for (int i = 0; i < answerIndex.length; i++) {
        if (answerIndexList[i] == index) {
          corretIndex = i;
          break;
        }
      }
    }

    print('answerIndex');
    print(answerIndex);
    print('correctIndex');
    print(corretIndex);
    return answerIndex;
  }

  @override
  void initState() {
    super.initState();
    print('initState');
    answerIndexList = generateAnswer();
  }

  @override
  Widget build(BuildContext context) {
    bool isCorrect = false;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          (index + 1).toString() + '번',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const Spacer(flex: 1),
          Center(
            child: Text(
              widget.vocas[index]['voca']!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: List.generate(answerIndexList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      color: color,
                      boxShadow: [cBoxShadow],
                      // gradient: cLinearGradient,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: InkWell(
                      onTap: () async {
                        if (index == corretIndex) {
                          setState(() {
                            print(isCorrect);
                            isCorrect = true;
                            color = Colors.pink;
                            print(isCorrect);
                          });
                        }

                        if (this.index + 1 == widget.vocas.length) {
                          return Navigator.pop(context);
                        } else {}

                        // Future.delayed(
                        //   Duration(milliseconds: 10),
                        //   (() {
                        //     setState(() {
                        //       this.index = this.index + 1;
                        //       answerIndexList = generateAnswer();
                        //     });
                        //   }),
                        // );
                      },
                      child: Center(
                        child: Text(
                          widget.vocas[answerIndexList[index]]['mean']!,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const Spacer(flex: 4),
        ],
      ),
    );
  }
}
