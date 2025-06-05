// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:tugas_flutter/studycasesiswa.dart/siswa_model.dart';

// class DBHelper {
//   static var database;

//   static Future<Database> db() async {
//     final dbPath = await getDatabasesPath();
//     return openDatabase(
//       join(dbPath, 'siswa.db'),
//       onCreate: (db, version) {
//         return db.execute(
//           'CREATE TABLE siswa(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, umur INTEGER)',
//         );
//       },
//       version: 1,
//       join(dpPath
//     );
//   }
//   Future<void> insertSiswa(Siswa siswa) async {
//   final db = await DBHelper.db();
//   await db.insert(
//     'siswa',
//     siswa.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }

// Future<List<Siswa>> getAllSiswa() async {
//   final db = await DBHelper.db();
//   final List<Map<String, dynamic>> maps = await db.query('siswa');

//   return List.generate(
//     maps.length,
//     (i) => Siswa.fromMap(maps[i]),
//   );
// }
// }