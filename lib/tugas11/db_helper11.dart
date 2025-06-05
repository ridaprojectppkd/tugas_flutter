import 'package:path/path.dart';

import 'package:sqflite/sqflite.dart';
import 'package:tugas_flutter/tugas11/modelkom11.dart';

class DBHelper {
  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'anggota.db'),
      onCreate: (db, version) {
        return db.execute( 
          'CREATE TABLE anggota_baru(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, umur TEXT, nilai_akhir TEXT, phone TEXT)', ////imageurl text
        );
      },
      version: 1,
    );
  }

  static Future<void> insertAnggota(AnggotaModel) async {
    final db = await DBHelper.initDB();
    await db.insert(
      'anggota_baru',
      AnggotaModel.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<AnggotaModel>> getAllAnggota() async {
    final db = await DBHelper.initDB();
    final List<Map<String, dynamic>> listData = await db.query('siswa_baru');

    return List.generate(
      listData.length,
      (index) => AnggotaModel.fromMap(listData[index]),
    );
  }
}