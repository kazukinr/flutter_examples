import 'package:flutter/cupertino.dart';
import 'package:flutter_examples/persist/repository/db_provider.dart';
import 'package:flutter_examples/persist/repository/todo_item.dart';

class TodoItemRepository {
  final DBProvider _dbProvider = DBProvider.instance;

  Future<List<TodoItem>> findAll() async {
    final db = await DBProvider.instance.database;

    final rows = await db.query(TodoItem.TABLE_NAME, orderBy: 'updatedAt DESC');
    if (rows.isEmpty) {
      return List.empty();
    } else {
      return rows.map((e) => TodoItem.fromMap(e)).toList();
    }
  }

  Future<int> insert(String title, String? body) async {
    final now = DateTime.now();
    final row = <String, dynamic>{
      'title': title,
      'body': body,
      'isDone': 0,
      'createdAt': now.toString(),
      'updatedAt': now.toString(),
    };

    final db = await DBProvider.instance.database;
    return await db.insert(TodoItem.TABLE_NAME, row);
  }

  Future<void> updateIsDone(int id, bool isDone) async {
    final now = DateTime.now();
    final update = <String, dynamic>{
      'id': id,
      'isDone': isDone ? 1 : 0,
      'updatedAt': now.toString(),
    };

    final db = await DBProvider.instance.database;
    await db.update(
      TodoItem.TABLE_NAME,
      update,
      where: 'id = ?',
      whereArgs: <int>[id],
    );
  }

  Future<void> update(TodoItem item) async {
    final now = DateTime.now();
    final update = <String, dynamic>{
      'id': item.id,
      'title': item.title,
      'body': item.body,
      'isDone': item.isDone ? 1 : 0,
      'updatedAt': now.toString(),
    };

    final db = await DBProvider.instance.database;
    await db.update(
      TodoItem.TABLE_NAME,
      update,
      where: 'id = ?',
      whereArgs: <int>[item.id],
    );
  }

  Future<void> delete(int id) async {
    final db = await DBProvider.instance.database;
    await db.delete(
      TodoItem.TABLE_NAME,
      where: 'id = ?',
      whereArgs: <int>[id],
    );
  }
}
