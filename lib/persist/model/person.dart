import 'package:flutter_examples/persist/model/database.dart';
import 'dart:async';

import 'package:sqflite/sqflite.dart';

class Person {
  final int id;
  final String name;
  final int age;

  Person({required this.id, required this.name, required this.age});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'age': age,
    };
  }
}

class PersonDao {
  PersonDao._();

  static final dao = PersonDao._();

  Future<List<Person>> find() async {
    final Database db = await DBProvider.db.database;
    final List<Map<String, dynamic>> maps = await db.query('persons');

    return List.generate(
        maps.length,
        (i) => Person(
            id: maps[i]['id'], name: maps[i]['name'], age: maps[i]['age']));
  }

  Future<void> insert(Person person) async {
    final Database db = await DBProvider.db.database;
    await db.insert(
      'persons',
      person.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> update(Person person) async {
    final Database db = await DBProvider.db.database;
    await db.update(
      'persons',
      person.toMap(),
      where: 'id = ?',
      whereArgs: [person.id],
    );
  }

  Future<void> delete(int id) async {
    final Database db = await DBProvider.db.database;
    await db.delete(
      'persons',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
