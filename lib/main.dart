import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:jongseo_toeic/app.dart';
import 'package:jongseo_toeic/data/source/local/local_datasource.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  await LocalDataSource.initialize();

  LocalDataSource localDataSource = LocalDataSource();

  if (!await localDataSource.hasData()) {
    await localDataSource.initVocabulary();
  }

  runApp(const MyApp());
}
