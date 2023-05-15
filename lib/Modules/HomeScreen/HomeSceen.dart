import 'package:appointment_system/Modules/AddPatient/AddPatient.dart';
import 'package:appointment_system/Modules/ListPatient/ListPatient.dart';
// import 'package:appointment_system/Modules/ListPatient/PatientDataBase.dart';
// import 'package:appointment_system/Modules/ListPatient/mysql.dart';
import 'package:appointment_system/Modules/PatientView/PatientView.dart';
// import 'package:appointment_system/models/PatientModel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
// PatientDataBase db = PatientDataBase();
class _HomeScreenState extends State<HomeScreen> {
  // PatientDataBase db = PatientDataBase();

  // var query = db.getPatient();
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   // db.createDatabase();
  // }
  // Widget buildListTile(patient pp) => ListTile(
  //   leading: const Icon(Icons.person),
  //   title: Text(pp.name),
  //   subtitle: Text(pp.id),
  //   trailing: const Icon(Icons.arrow_forward_ios),
  //   onTap: () {
  //     setState(() {
  //       Navigator.push(context, MaterialPageRoute(builder: (context)=> PatientView(userData: pp,)));
  //     });
  //   },
  // );

  Widget buildListTile(pp) => ListTile(
    leading: const Icon(Icons.person),
    title: Text(pp.name),
    subtitle: Text(pp.id),
    trailing: const Icon(Icons.arrow_forward_ios),
    onTap: () {
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> PatientView(userData: pp,)));
      });
    },
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Text(''),
          title: const Text(
            "Home Screen",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ListView(
              //   shrinkWrap: true,
              //   children: [
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Mahmoud Adel"),
              //       subtitle: const Text("20202020"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Mahmoud Adel"),
              //       subtitle: const Text("20202020"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Mahmoud Adel"),
              //       subtitle: const Text("20202020"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //     ListTile(
              //       leading: const Icon(Icons.person),
              //       title: const Text("Patient Name"),
              //       subtitle: const Text("Patient ID"),
              //       trailing: const Icon(Icons.arrow_forward_ios),
              //       onTap: () {},
              //     ),
              //   ],
              // ),
              ListView.builder(
                // itemBuilder: (context, index) => ListTile(
                //   leading: const Icon(Icons.person),
                //   title: const Text("Patient Name"),
                //   subtitle: const Text("Patient ID"),
                //   trailing: const Icon(Icons.arrow_forward_ios),
                //   onTap: () {},
                // ),
                // itemBuilder: (context, index) => buildListTile(db.getPatient()[index]),
                itemBuilder: (context, index) => buildListTile(p[index]),
                // separatorBuilder: (context, index) => SizedBox(
                //   height: 0,
                // ),
                itemCount: p.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AddPatient()));
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ));
  }
}
