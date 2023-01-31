import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/common/dialog.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/repository/word_api_datasource.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_example.dart';
// import 'package:sqflite/sqflite.dart';

class VocaCard extends StatefulWidget {
  VocaCard({super.key, this.onPress, required this.voca});

  VoidCallback? onPress;
  final Voca voca;

  @override
  State<VocaCard> createState() => _VocaCardState();
}

class _VocaCardState extends State<VocaCard> {
  // final FlutterTts tts = FlutterTts();
  // @override
  // void initState() {
  //   super.initState();
  //   setTTS();
  //   tts.setLanguage('en');
  //   tts.setSpeechRate(0.4);
  // }

  // void setTTS() async {
  //   await tts.setSharedInstance(true);
  // }

  bool isClick = false;
  double _height = 100;
  late WordApiDatasource wordApiDatasource;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    wordApiDatasource =  WordApiDatasource();
 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: InkWell(
        onTap: showExample,
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: const Duration(microseconds: 0),
          height: _height,
          decoration: cBoxDecoration,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      // tts.speak(widget.voca.voca);
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 4, left: 4),
                      child: Icon(
                        Icons.mic,
                        size: 23,
                      ),
                    ),
                  ),
                  widget.voca.isMine
                      ? InkWell(
                          onTap: widget.onPress!,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 4, right: 8.0),
                            child: Icon(
                              Icons.remove,
                              size: 28,
                            ),
                          ),
                        )
                      : InkWell(
                          child: const Padding(
                            padding: EdgeInsets.only(top: 4, right: 8.0),
                            child: Icon(
                              Icons.star,
                              size: 26,
                            ),
                          ),
                          onTap: () async {
                          
                          }),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Text(
                      widget.voca.voca,
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                          overflow: TextOverflow.clip),
                    ),
                  ),
                  if (isClick)
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(
                        child: Text(widget.voca.mean),
                      ),
                    )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  isClick
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              _height = 100;
                              isClick = false;
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 4, right: 8.0),
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 28,
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              _height = 150;
                              isClick = true;
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 4, right: 8.0),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              size: 28,
                            ),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showExample() async {

          String word = widget.voca.voca;
          String example = await  wordApiDatasource.getWordExample(word);
  
          List<String> exampleList = example.split(' ');
          int exampleIndex = exampleList.indexOf(word);
          if(exampleIndex == -1) {
            exampleIndex = exampleList.indexOf('${word}s');
            if(exampleIndex == -1) {
              exampleIndex = exampleList.indexOf('${word}ed');
              if(exampleIndex == -1) {
                exampleIndex = exampleList.indexOf('${word}d');
              }
            }
          }
          String mean ='';
           Get.dialog(
            StatefulBuilder(
              builder: (context,setState) {
                return AlertDialog(
                  title: Text('예제'),
                  content:   Container(
                    height: mean == '' ? 60 :80 ,
                    child: example != '' ? SingleChildScrollView(
                      child: Column(
                      children: [
                        RichText(text: TextSpan(
                          children: List.generate(exampleList.length , (index) => index == exampleIndex ? TextSpan(text: '${exampleList[index]} ', style: const TextStyle(color: Colors.redAccent)) : TextSpan(text: '${exampleList[index]} ') 
                        ))),
                        SizedBox(height: 20),
                        Text(mean, style: TextStyle(fontSize: 12),),
                      ],
                     ),
                    ): Text('준비된 예제가 없습니다.')),
  
                  actions: [
                    if(example != '' && mean == '')
                    TextButton(
                      onPressed: () async {
                           String tmp =  await wordApiDatasource.getWordMean(example);
                       setState(()  {
                            mean = tmp;
                       });
                    }, child: const Text('뜻')
                    )else
                    TextButton(
                      onPressed: () async {
                       Get.back();
                    }, child: const Text('Back')
                    )
                  ],
                );
              }
            )
          );
      }
}
