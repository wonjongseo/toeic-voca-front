import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/app.dart';
import 'package:jongseo_toeic/data/source/local/local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  await LocalDataSource.initialize();

  LocalDataSource localDataSource = LocalDataSource();

  if (!await localDataSource.hasData()) {
    print('didi');
    await localDataSource.initVocabulary();
  }
  runApp(const MyApp());
}

// flutter packages pub run build_runner build --delete-conflicting-outputs