import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/days/components/days_list.dart';
import 'package:jongseo_toeic/screens/days/days_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            const Text('Saved', 
             style: TextStyle(fontWeight: FontWeight.w600),),
          ],

        ),
      ),
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

