import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database _database = DatabaseHelper.instance.database as Database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> _initDatabase() async {
    // Open the database
    String path = '${await getDatabasesPath()}patients.db';
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE my_table (
        id INTEGER PRIMARY KEY,
        name TEXT,
        age INTEGER
      )
    ''');
  }

  Future<void> insertData() async {
    Database db = await DatabaseHelper.instance.database;
    await db.insert('my_table', {'name': 'John', 'age': 30});
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await DatabaseHelper.instance.database;
    return await db.query('my_table');
  }

Future<void> updateData() async {
    Database db = await DatabaseHelper.instance.database;
    await db.update('my_table', {'name': 'John', 'age': 31}, where: 'id = ?', whereArgs: [1]);
  }

  Future<void> deleteData() async {
    Database db = await DatabaseHelper.instance.database;
    await db.delete('my_table', where: 'id = ?', whereArgs: [1]);
  }

  Future<void> deleteAll() async {
    Database db = await DatabaseHelper.instance.database;
    await db.delete('my_table');
  }

  Future<void> close() async {
    Database db = await DatabaseHelper.instance.database;
    await db.close();
  }

  Future<void> rawQuery() async {
    Database db = await DatabaseHelper.instance.database;
    await db.rawQuery('SELECT * FROM my_table WHERE name = ?', ['Mary']);
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My ListView'),
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: DatabaseHelper.instance.database.then((db) => db.query('my_table')),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return CircularProgressIndicator();
          }

          List<ListTile> tiles = snapshot.data!.map((data) => ListTile(
            title: Text(data['name']),
            subtitle: Text(data['age'].toString()),
          )).toList();

          return ListView(
            children: tiles,
          );
        },
      ),
    );
  }
}
