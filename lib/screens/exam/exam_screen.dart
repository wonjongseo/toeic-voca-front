
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

  int index = 0;
  int corretIndex = 0;
  late List<int> answerIndexList; 

  List<int> generateAnswer () {
    Random random = new Random();

    List<int> answerIndex = List.empty(growable: true);
    
    for(int i = 0 ; i < 4 ; i++) {  
      int randomNumber = random.nextInt(widget.vocas.length);
      while(answerIndex.contains(randomNumber) ) {
          randomNumber = random.nextInt(widget.vocas.length);
      }
      answerIndex.add(randomNumber);
    }

    if(!answerIndex.contains(index)) {
      int correctNumber = random.nextInt(4);
      answerIndex[correctNumber] = index;
      corretIndex = correctNumber;
    }
    else {
      corretIndex  = answerIndexList.elementAt(index);
    }
   

    return answerIndex;
     
  }

  @override
  void initState() {
    super.initState();
    answerIndexList  = generateAnswer();
 }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          
          AnimatedContainer(
            duration: Duration(seconds: 3),
            child: Center(
              child: Text(widget.vocas[index]['voca']!),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: List.generate(answerIndexList.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 3),
                    height: size.height / 4  - 100,
                    decoration: BoxDecoration(
                      boxShadow: [
                        cBoxShadow
                      ],
                      gradient: cLinearGradient
                    ),
                    child: InkWell(
                      
                      onTap: () async {
                        if(corretIndex == index) {
                          print('2222');
                        }
                        Future.delayed(Duration(milliseconds: 3000), (() {
                           setState(() {
                            this.index = this.index + 1;
                            answerIndexList = generateAnswer();
                          });  
                        }));                       
                      },
                      child: Center(child: Text(widget.vocas[answerIndexList[index]]['mean']!))
                      )
                  ),
                );
              }),
            ),
          )
        ],

      ),
    );

  }
}

