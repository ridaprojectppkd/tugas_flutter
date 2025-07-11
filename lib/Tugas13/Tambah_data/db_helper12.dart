import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tugas_flutter/tugas11/modelang.dart';

class DBHelper {
  static Database? _database;

  // Inisialisasi database
  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  static Future<Database> initDB() async {
    final dbPath = await getDatabasesPath();
    return openDatabase(
      join(dbPath, 'anggota.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE anggota_baru(id INTEGER PRIMARY KEY AUTOINCREMENT, nama TEXT, email TEXT, visimisi TEXT, phone TEXT)',
        );
      },
      version: 1,
    );
  }

  // CREATE: Tambah data anggota
  static Future<void> insertAnggota(AnggotaModel anggota) async {
    final db = await database;
    await db.insert(
      'anggota_baru',
      anggota.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // READ: Ambil semua data anggota
  static Future<List<AnggotaModel>> getAllAnggota() async {
    final db = await database;
    final List<Map<String, dynamic>> listData = await db.query('anggota_baru');

    return List.generate(
      listData.length,
      (index) => AnggotaModel.fromMap(listData[index]),
    );
  }

  // UPDATE: Edit data anggota berdasarkan ID
  static Future<void> updateAnggota(AnggotaModel anggota) async {
    final db = await database;
    await db.update(
      'anggota_baru',
      anggota.toMap(),
      where: 'id = ?',
      whereArgs: [anggota.id],
    );
  }

  // DELETE: Hapus data anggota berdasarkan ID
  static Future<void> deleteAnggota(int id) async {
    final db = await database;
    await db.delete('anggota_baru', where: 'id = ?', whereArgs: [id]);
  }
}
