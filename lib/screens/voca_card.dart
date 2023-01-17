import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:jongseo_toeic/constants/voca.dart';

class VocaCard extends StatefulWidget {
  final Voca voca;
  const VocaCard({
    super.key,
    required this.voca,
  });

  @override
  State<VocaCard> createState() => _VocaCardState();
}

class _VocaCardState extends State<VocaCard> {
  final FlutterTts tts = FlutterTts();
  @override
  void initState() {
    super.initState();
    setTTS();
    tts.setLanguage('en');
    tts.setSpeechRate(0.4);
  }

  void setTTS() async {
    await tts.setSharedInstance(true);
  }

  bool isClick = false;
  double _height = 130;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: const Duration(microseconds: 0),
        height: _height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.yellow,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 3),
              blurRadius: 2,
              color: const Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFFddd6f3),
              Color(0xFFfaaca8),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        tts.speak(widget.voca.voca);
                      },
                      child: const Icon(
                        Icons.mic,
                        size: 28,
                      ),
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {},
                  //   child: const Icon(
                  //     Icons.star,
                  //     size: 26,
                  //   ),
                  // ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Text(widget.voca.voca,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 21,
                        )),
                  ),
                  if (isClick)
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
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
                              _height = 130;
                              isClick = false;
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.keyboard_arrow_up,
                              size: 28,
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              _height = 200;
                              isClick = true;
                            });
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
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
}
