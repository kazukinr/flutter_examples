import 'package:flutter_examples/persist/repository/todo_item.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();

  static final DBProvider instance = DBProvider._();
  static const int _DB_VERSION = 1;

  Database? _database;

  Future<Database> get database async {
    return _database ??= await _initDatabase();
  }

  Future<Database> _initDatabase() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'todo_database.db'),
      version: _DB_VERSION,
      onCreate: (db, version) async {
        final batch = db.batch();
        _createTable(batch);
        await batch.commit();
      },
    );
  }

  void _createTable(Batch batch) {
    batch.execute('''
      ${TodoItem.CREATE}
    ''');
  }
}
