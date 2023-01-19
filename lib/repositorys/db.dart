import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:jongseo_toeic/models/voca.dart';
// import 'package:sqflite/sqflite.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DB {

  static String dbName = "data.db";
  Future<Database> getDatabasePath () async {
    var  databasesPath = await getDatabasesPath();
    var path = join(databasesPath, '~www/$dbName');
    var exists = await databaseExists(path);

     if (!exists) {
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {}

      var data = await rootBundle.load(join('assets', 'data.db'));
      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );

      await File(path).writeAsBytes(bytes, flush: true); 
    }
     return await openDatabase(path);
  }

  Future<bool> insertVoca(Database db, Voca voca) async {
    try{
      await db.insert(dbName, voca.toMap());
      return true;
    }
    catch(e) {
      log(e.toString());
      return false;
    }
  }

  
  
}