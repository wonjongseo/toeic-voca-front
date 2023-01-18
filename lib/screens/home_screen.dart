import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/repositorys/voca_provider.dart';
import 'package:jongseo_toeic/screens/days/components/days_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        body: DaysList(size: size));
  }
}
