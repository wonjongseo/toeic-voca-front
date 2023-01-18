import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';
class VocaProvider {
  late Database db;
   String path = '';

  String tableName = "voca";
  final String columnId = '_id';
  final String columnVoca = 'voca';
  final String columnMean = 'mean';

  Future getPath() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, '~www/data.db');
    var exists = await databaseExists(path);
     if(!exists) {
      try{
        await Directory(dirname(path)).create(recursive: true);

      }catch(e) {
        log(e.toString());
      }

      var data = await rootBundle.load(join('assets', 'data.db'));
      List<int> bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );

       await File(path).writeAsBytes(bytes, flush: true);
    }

    this.path = path;
  }
  Future open() async {
    
    db = await openDatabase(path,version: 1,
    onCreate: (db, version) async {
      await db.execute(
        '''
        create table $tableName (
            $columnId integer primary key autoincrement,
            $columnVoca text not null,
            $columnMean text not null,
        );
        '''
      );
    });
  }

  Future<Voca> insert(Voca voca) async {
    voca.id = await db.insert(tableName, voca.toMap());
    return voca;
  }

  Future<List<Voca>> getVocas() async {
    List<Map<String,dynamic>> maps = await db.query(tableName);
    return maps.map((e) => Voca.fromMap(e)).toList();
  }

  Future<int> removeVoca(int id) async {
    return await db.delete(tableName , where: '$columnId = ?' , whereArgs: [id]);
  }

  Future close() async => db.close();

}