import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

class User {
  int id;
  String name;
  String email;

  User({required this.id, required this.name, required this.email});

  static fromMap(ResultRow row) {
    return User(
      id: row['id'],
      name: row['name'],
      email: row['email'],
    );
  }
}


class MyBatabase {
   getPatient() async {
    final conn =await MySqlConnection.connect(ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'your_username',
      password: 'your_password',
      db: 'your_database_name',
    ));

    final results = await conn.query('SELECT * FROM your_table_name');
    for (var row in results) {
      print(
          'id: ${row[0]}, name: ${row[1]}, email: ${row[2]}, phone: ${row[3]}, address: ${row[4]}, marital_status: ${row[5]}, Blood_Type: ${row[6]}');
    }
    final data = results.toList().map((row) => User.fromMap(row)).toList();
    return data;
   }
}

class testScreen extends StatefulWidget {
  const testScreen({Key? key}) : super(key: key);

  @override
  State<testScreen> createState() => _testScreenState();
}

class _testScreenState extends State<testScreen> {
  var data = MyBatabase().getPatient();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('testScreen'),
      ),
      body: FutureBuilder(
        future: MyBatabase().getPatient(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.subtitle),
                  // add any other widgets to display the item
                );
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
