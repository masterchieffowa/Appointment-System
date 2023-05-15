import 'package:appointment_system/Modules/ListPatient/mysql.dart';
import 'package:appointment_system/models/PatientModel.dart';
// import 'package:flutter/foundation.dart';
// import 'package:sqflite/sqflite.dart';

class PatientDataBase{
  var database = new Mysql();

  getPatient(){
    database.getConnection().then((conn){
      String sql = 'select * from Patients';
      conn.query(sql).then((results){
        for(var row in results){
          print('id: ${row[0]}, name: ${row[1]}, email: ${row[2]}, phone: ${row[3]}, address: ${row[4]}, marital_status: ${row[5]}, Blood_Type: ${row[6]}');
        }
        return results;
      });
    });
  }

  getSpecialPatient({
    required int ID ,
  }){
    database.getConnection().then((conn){
      String sql = 'select * from Patients where id = $ID';
      conn.query(sql).then((results){
        for(var row in results){
          print('id: ${row[0]}, name: ${row[1]}, email: ${row[2]}, phone: ${row[3]}, address: ${row[4]}, marital_status: ${row[5]}, Blood_Type: ${row[6]}');
        }
        return results;
      });
    });
  }

  void insertPatient(patient patient, {
    required String name,
    required String email,
    required String phone,
    required String address,
    required String marital_status,
    required String Blood_Type,
  }){
    database.getConnection().then((conn){
      String sql = 'insert into Patients (name, email, phone, address, marital_status, Blood_Type) values (\'$name\', \'$email\', \'$phone\', \'$address\', \'$marital_status\', \'$Blood_Type\')';
      conn.query(sql).then((results){
        print('inserted');
      });
    });
  }

  void deletePatient({
    required int ID,
  }){
    database.getConnection().then((conn){
      String sql = 'delete from Patients where id = $ID';
      conn.query(sql).then((results){
        print('deleted');
      });
    });
  }

  void updatePatient({
    required int ID,
    required String name,
    required String email,
    required String phone,
    required String address,
    required String marital_status,
    required String Blood_Type,
  }){
    database.getConnection().then((conn){
      String sql = 'update Patients set name = \'$name\', email = \'$email\', phone = \'$phone\', address = \'$address\', marital_status = \'$marital_status\', Blood_Type = \'$Blood_Type\' where id = $ID';
      conn.query(sql).then((results){
        print('updated');
      });
    });
  }

}


  // Future<void> openDataBase() async {
  //   var db = await openDatabase(
  //       'my_db.db',
  //     version: 1,
  //     onCreate: (database, version) async {
  //       if (kDebugMode) {
  //         print("database created");
  //       }
  //       await database.execute(
  //           'CREATE TABLE patients (id INTEGER PRIMARY KEY, name TEXT, email TEXT, phone TEXT, address TEXT, marital_status TEXT, Blood_Type TEXT)'
  //           //     .then(
  //           //         (value) => print('table created')
  //           // ).catchError(
  //           //         (error) => print('error in creating table $error')
  //           // )
  //       );
  //     },
  //     onOpen: (database) async {
  //       print('Database Opened');
  //     }
  //
  //   );
  // }
  //
  // void createDatabase() async {
  //   // var databasesPath = await getDatabasesPath();
  //   // String path = databasesPath + 'my_db.db';
  //   var database = await openDatabase(
  //       "my_db.db",
  //       version: 1,
  //       onCreate: (database, version) {
  //         if (kDebugMode) {
  //           print("database created");
  //         }
  //         database.execute(
  //             'CREATE TABLE Patients (id INTEGER PRIMARY KEY,DOB DATE, name TEXT, email TEXT, phone TEXT, address TEXT, marital_status TEXT, Blood_Type TEXT)'
  //         ).then((value){
  //           if (kDebugMode) {
  //             print('table created');
  //           }
  //         }).catchError((error){
  //           if (kDebugMode) {
  //             print('error in creating table ${error.toString()}');
  //           }
  //         });
  //       },
  //       onOpen: (database) async {
  //         print('Database Opened');
  //       }
  //   );
  // }
  //
  // void insertToDataBase(){
  //
  // }
  //
