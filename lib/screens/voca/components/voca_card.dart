import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/common/dialog.dart';
import 'package:jongseo_toeic/config/constatns.dart';
import 'package:jongseo_toeic/controllers/vocabulary_controller.dart';
import 'package:jongseo_toeic/data/source/local/models/vocabulary.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';
import 'package:jongseo_toeic/repository/word_api_datasource.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_example.dart';
// import 'package:sqflite/sqflite.dart';

class VocaCard extends StatefulWidget {
  VocaCard({super.key, this.onPress, required this.voca});

  VoidCallback? onPress;
  final Vocabulary voca;

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
    super.initState();
    wordApiDatasource = WordApiDatasource();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: const Duration(microseconds: 0),
        height: _height,
        decoration: cBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GetBuilder<VocabularyController>(builder: (controller) {
              return Row(
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
                      : widget.voca.isLike
                          ? InkWell(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, right: 10),
                                child: SvgPicture.asset(
                                  'assets/svg/star_boder.svg',
                                  height: 20,
                                ),
                              ),
                              onTap: () {
                                controller.addLikeVocabulary(widget.voca);
                              })
                          : InkWell(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 4, right: 10),
                                child: SvgPicture.asset(
                                    'assets/svg/star_full.svg',
                                    height: 20),
                              ),
                              onTap: () {
                                controller.addLikeVocabulary(widget.voca);
                              }),
                ],
              );
            }),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Text(
                    widget.voca.word,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: showExample,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 4, left: 8.0),
                    child: SvgPicture.asset('assets/svg/eye.svg',
                        color: Colors.black, height: 20),
                  ),
                ),
                isClick
                    ? InkWell(
                        onTap: () {
                          setState(() {
                            _height = 100;
                            isClick = false;
                          });
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(bottom: 4, right: 8.0),
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
                          padding: EdgeInsets.only(bottom: 4, right: 8.0),
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
    );
  }

  int getExampleIndex(List<String> exampleList, String word) {
    int exampleIndex = exampleList.indexOf(word);
    if (exampleIndex == -1) {
      exampleIndex = exampleList.indexOf('${word}s');
      if (exampleIndex == -1) {
        exampleIndex = exampleList.indexOf('${word}ed');
        if (exampleIndex == -1) {
          exampleIndex = exampleList.indexOf('${word}d');
        }
      }
    }
    return exampleIndex;
  }

  void showExample() async {
    String word = widget.voca.word;
    List<dynamic> examples = await wordApiDatasource.getWordExample(word);

    List<String> means = List.filled(examples.length, '');
    Get.dialog(StatefulBuilder(builder: (context, setState) {
      return AlertDialog(
        title: Text(
          '예제',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        content: examples.isNotEmpty
            ? Container(
                height: (examples.length * 65),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      examples.length,
                      (index) {
                        String example = examples[index];
                        List<String> exampleList = example.split(' ');
                        int exampleIndex = getExampleIndex(exampleList, word);

                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  onPressed: () async {
                                    String tmp = await wordApiDatasource
                                        .getWordMean(example);
                                    setState(() {
                                      means[index] = tmp;
                                    });
                                  },
                                  child: RichText(
                                    text: TextSpan(
                                      children: List.generate(
                                        exampleList.length,
                                        (index) => index == exampleIndex
                                            ? TextSpan(
                                                text: '${exampleList[index]} ',
                                                style: const TextStyle(
                                                    color: Colors.redAccent),
                                              )
                                            : TextSpan(
                                                text: '${exampleList[index]} '),
                                      ),
                                    ),
                                  )),
                              const SizedBox(height: 5),
                              Text(
                                means[index],
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              const SizedBox(height: 15),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              )
            : const Text('준비된 예제가 없습니다.'),
        actions: [
          TextButton(
            onPressed: () async {
              Get.back();
            },
            child: const Text('Back'),
          )
        ],
      );
    }));
  }
}

/**

 void showExample() async {
    String word = widget.voca.word;
    List<dynamic> examples = await wordApiDatasource.getWordExample(word);

    List<String> means = List.filled(examples.length, '');
    Get.dialog(StatefulBuilder(builder: (context, setState) {
      return AlertDialog(
        title: Text(
          '예제',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        content: examples.isNotEmpty
            ? SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    examples.length,
                    (index) {
                      String example = examples[index];
                      List<String> exampleList = example.split(' ');
                      int exampleIndex = getExampleIndex(exampleList, word);

                      return SizedBox(
                        height: 60 + (examples.length * 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero),
                                onPressed: () async {
                                  String tmp = await wordApiDatasource
                                      .getWordMean(example);
                                  setState(() {
                                    means[index] = tmp;
                                  });
                                },
                                child: Expanded(
                                  child: RichText(
                                    text: TextSpan(
                                      children: List.generate(
                                        exampleList.length,
                                        (index) => index == exampleIndex
                                            ? TextSpan(
                                                text: '${exampleList[index]} ',
                                                style: const TextStyle(
                                                    color: Colors.redAccent),
                                              )
                                            : TextSpan(
                                                text: '${exampleList[index]} '),
                                      ),
                                    ),
                                  ),
                                )),
                            const SizedBox(height: 5),
                            Text(
                              means[index],
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const Divider(color: Colors.grey),
                            const SizedBox(height: 8),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            : const Text('준비된 예제가 없습니다.'),
        actions: [
          TextButton(
            onPressed: () async {
              Get.back();
            },
            child: const Text('Back'),
          )
        ],
      );
    }));
  }
} 
  */