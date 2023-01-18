import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:jongseo_toeic/screens/home_screen.dart';
import 'package:sqflite/sqflite.dart';

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jongseo Voca',
      home: HomeScreen(),
    );
  }
}
