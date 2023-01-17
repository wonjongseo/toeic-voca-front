import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/day_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Jongseo Voca',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: List.generate(
            Voca.getDayCount(),
            (index) {
              if (index == 0) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DayScreen(
                              vocas: Voca.getDay(index),
                            ),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 30),
                        height: 90,
                        width: size.width / 1.15,
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
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Day $index',
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: size.width / 2 - 50,
                                    child: LinearProgressIndicator(
                                      value: (0.1 * index),
                                    ),
                                  ),
                                  Text(' 0 / ${Voca.getCountOfDay(index)}'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ));
  }
}
