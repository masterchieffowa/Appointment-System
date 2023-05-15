// // import 'package:flutter/material.dart';
// // import 'package:sqflite/sqflite.dart';
// // import 'dart:async';
// //
// // class PatientListView extends StatefulWidget {
// //   @override
// //   _PatientListViewState createState() => _PatientListViewState();
// // }
// //
// // class _PatientListViewState extends State<PatientListView> {
// //   List<Map> _patients = [];
// //
// //   // Fetch patient records from the database and update the state
// //   void _getPatients() async {
// //     final Database db = await openDatabase('patients.db');
// //     final List<Map<String, dynamic>> maps = await db.query('patients');
// //     setState(() {
// //       _patients = maps;
// //     });
// //   }
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _getPatients();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Patient List'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: _patients.length,
// //         itemBuilder: (BuildContext context, int index) {
// //           return ListTile(
// //             title: Text(_patients[index]['name']),
// //             subtitle: Text(_patients[index]['address']),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
//
// class PatientListView extends StatefulWidget {
//   @override
//   _PatientListViewState createState() => _PatientListViewState();
// }
//
// class _PatientListViewState extends State<PatientListView> {
//   List<Map> _patients = [];
//
//   // Open a database
//   Future<Database> _openDatabase() async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, 'patients.db');
//     return await openDatabase(path, version: 1, onCreate: (db, version) async {
//       await db.execute('CREATE TABLE patients (id INTEGER PRIMARY KEY, name TEXT, address TEXT)');
//     });
//   }
//
//   // Fetch patient records from the database and update the state
//   void _getPatients() async {
//     final Database db = await _openDatabase();
//     final List<Map<String, dynamic>> maps = await db.query('patients');
//     setState(() {
//       _patients = maps;
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     _getPatients();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Patient List'),
//       ),
//       body: ListView.builder(
//         itemCount: _patients.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             title: Text(_patients[index]['name']),
//             subtitle: Text(_patients[index]['address']),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class PatientListView extends StatefulWidget {
  @override
  _PatientListViewState createState() => _PatientListViewState();
}

class _PatientListViewState extends State<PatientListView> {
  List<Map> _patients = [];

  var databaseFactoryIo;

  // Initialize the database factory and open a database
  Future<Database> _openDatabase() async {
    WidgetsFlutterBinding.ensureInitialized();
    final databaseFactory = databaseFactoryIo;
    return await databaseFactory.openDatabase(join(await getDatabasesPath(), 'patients.db'));
  }

  // Fetch patient records from the database and update the state
  void _getPatients() async {
    final Database db = await _openDatabase();
    final List<Map<String, dynamic>> maps = await db.query('patients');
    setState(() {
      _patients = maps;
    });
  }

  @override
  void initState() {
    super.initState();
    _getPatients();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient List'),
      ),
      body: ListView.builder(
        itemCount: _patients.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_patients[index]['name']),
            subtitle: Text(_patients[index]['address']),
          );
        },
      ),
    );
  }
}
