import 'dart:developer';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io';

class VocaProvider {
  static late Database db;
  static String path = '';

  static const String tableName = "voca";
  static const String columnId = 'id';
  static const String columnVoca = 'voca';
  static const String columnMean = 'mean';

  Future<void> initDatabase() async {
    db = await openDatabase(
      join(await getDatabasesPath(), 'data.db'),
      onCreate: (db, version) {
        return db.execute(" create table $tableName ("
            "$columnId integer primary key autoincrement,"
            "$columnVoca text not null,"
            "$columnMean text not null)");
      },
      version: 1,
    );
  }

  Future<Voca> insert(Voca voca) async {
    await db.insert(tableName, voca.toMap());
    return voca;
  }

  Future<List<Voca>> getVocas() async {
    List<Map<String, dynamic>> maps = await db.query(tableName);
    return maps.map((e) => Voca.fromMap(e)).toList();
  }

  Future<int> removeVoca(int id) async {
    return await db.delete(tableName, where: '$columnId = ?', whereArgs: [id]);
  }

  Future close() async => db.close();
}
