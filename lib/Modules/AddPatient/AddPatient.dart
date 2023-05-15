import 'package:appointment_system/Modules/HomeScreen/HomeSceen.dart';
import 'package:appointment_system/Modules/ListPatient/ListPatient.dart';
import 'package:appointment_system/models/PatientModel.dart';
import 'package:appointment_system/models/PatientModel.dart';
import 'package:appointment_system/models/PatientModel.dart';
import 'package:appointment_system/models/PatientModel.dart';
import 'package:appointment_system/models/PatientModel.dart';

// import 'package:appointment_system/Modules/ListPatient/PatientDataBase.dart';
// import 'package:appointment_system/Modules/ListPatient/mysql.dart';
// import 'package:appointment_system/models/PatientModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AddPatient extends StatefulWidget {
  const AddPatient({Key? key}) : super(key: key);

  @override
  State<AddPatient> createState() => _AddPatientState();
}

class _AddPatientState extends State<AddPatient> {
  bool a = false;
  bool b = false;
  bool c = false;

  TextEditingController name = TextEditingController();
  TextEditingController id = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController DOB = TextEditingController();
  TextEditingController marital_status = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController blood = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();

  // var db = PatientDataBase();
  // var db = PatientDataBase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text(
          "Add Patient",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Personal data",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Patient Name",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Name',
                  ),
                  keyboardType: TextInputType.name,
                  controller: name,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Patient DOB",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Age',
                  ),
                  keyboardType: TextInputType.datetime,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Patient Phone Number",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Phone Number',
                  ),
                  keyboardType: TextInputType.phone,
                  controller: phone,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Patient National ID",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient National ID',
                  ),
                  keyboardType: TextInputType.number,
                  controller: id,
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              const Text(
                "Patient Email",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Email',
                  ),
                  keyboardType: TextInputType.number,
                  controller: email,
                ),
              ),

              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Patient Address",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Address',
                  ),
                  keyboardType: TextInputType.streetAddress,
                  controller: address,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Patient Marital Status",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Marital Status',
                  ),
                  keyboardType: TextInputType.text,
                  controller: marital_status,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     // const SizedBox(width: 20,),
              //     // Container(
              //     //   width: 100,
              //     //   child: TextField(
              //     //     decoration: InputDecoration(
              //     //       border: OutlineInputBorder(),
              //     //       hintText: 'Enter Patient Name',
              //     //     ),
              //     //   ),
              //     // ),
              //     // const SizedBox(width: 10,),
              //     // Container(
              //     //   width: 100,
              //     //   child: TextField(
              //     //     decoration: InputDecoration(
              //     //       border: OutlineInputBorder(),
              //     //       hintText: 'Enter Patient Name',
              //     //     ),
              //     //   ),
              //     // ),
              //     // const SizedBox(width: 10,),
              //     // Container(
              //     //   width: 100,
              //     //   child: TextField(
              //     //     decoration: InputDecoration(
              //     //       border: OutlineInputBorder(),
              //     //       hintText: 'Enter Patient Name',
              //     //     ),
              //     //   ),
              //     // ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient Name",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Name',
              //             ),
              //             keyboardType: TextInputType.name,
              //             controller: name,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient DOB",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           child: const TextField(
              //             decoration: InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Age',
              //             ),
              //             keyboardType: TextInputType.datetime,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient Phone Number",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Phone Number',
              //             ),
              //             keyboardType: TextInputType.phone,
              //             controller: phone,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient National ID",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient National ID',
              //             ),
              //             keyboardType: TextInputType.number,
              //             controller: id,
              //           ),
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       height: 50,
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient Address",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Address',
              //             ),
              //             keyboardType: TextInputType.streetAddress,
              //             controller: address,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient Marital Status",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Marital Status',
              //             ),
              //             keyboardType: TextInputType.text,
              //             controller: marital_status,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     // TODO: Change the column that mentioned to marital status
              //     // Column(
              //     //   crossAxisAlignment: CrossAxisAlignment.start,
              //     //   children: [
              //     //     const Text(
              //     //       "Patient Marital Status",
              //     //       style: TextStyle(
              //     //         fontSize: 20,
              //     //         fontWeight: FontWeight.bold,
              //     //         color: Colors.black38,
              //     //       ),
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 20,
              //     //     ),
              //     //     Container(
              //     //       width: 300,
              //     //       child: TextField(
              //     //         decoration: const InputDecoration(
              //     //           border: OutlineInputBorder(),
              //     //           hintText: 'Enter Patient Marital Status',
              //     //         ),
              //     //         keyboardType: TextInputType.text,
              //     //         controller: marital_status,
              //     //       ),
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 50,
              //     //     ),
              //     //   ],
              //     // ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 3,
                width: double.infinity,
                color: Colors.black38,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Medical data",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const Text(
                "Patient Blood Type",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Blood Type',
                  ),
                  keyboardType: TextInputType.text,
                  controller: blood,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Patient weight",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 50,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient weight',
                  ),
                  keyboardType: TextInputType.text,
                  controller: weight,
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient Blood Type",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           width: 300,
              //           height: 50,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Blood Type',
              //             ),
              //             keyboardType: TextInputType.text,
              //             controller: blood,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     // Column(
              //     //   crossAxisAlignment: CrossAxisAlignment.start,
              //     //   children: [
              //     //     const Text(
              //     //       "Patient Weight",
              //     //       style: TextStyle(
              //     //         fontSize: 20,
              //     //         fontWeight: FontWeight.bold,
              //     //         color: Colors.black38,
              //     //       ),
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 20,
              //     //     ),
              //     //     SizedBox(
              //     //       height: 50,
              //     //       width: 300,
              //     //       child: TextField(
              //     //         decoration: const InputDecoration(
              //     //           border: OutlineInputBorder(),
              //     //           hintText: 'Enter Patient Weight',
              //     //         ),
              //     //         keyboardType: TextInputType.number,
              //     //         controller: weight,
              //     //       ),
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 50,
              //     //     ),
              //     //   ],
              //     // ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //
              //     // Column(
              //     //   crossAxisAlignment: CrossAxisAlignment.start,
              //     //   children: [
              //     //     Row(
              //     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     //       crossAxisAlignment: CrossAxisAlignment.center,
              //     //       children: [
              //     //         const Text(
              //     //           "Patient Smoking",
              //     //           style: TextStyle(
              //     //             fontSize: 20,
              //     //             fontWeight: FontWeight.bold,
              //     //             color: Colors.black38,
              //     //           ),
              //     //         ),
              //     //         const SizedBox(
              //     //           width: 10,
              //     //         ),
              //     //         Checkbox(
              //     //           activeColor: Colors.blue,
              //     //           value: a,
              //     //           onChanged: (value) {
              //     //             setState(() {
              //     //               a = !a;
              //     //             });
              //     //           },
              //     //         )
              //     //       ],
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 20,
              //     //     ),
              //     //     Row(
              //     //       children: [
              //     //         const Text(
              //     //           "Patient Drinking",
              //     //           style: TextStyle(
              //     //             fontSize: 20,
              //     //             fontWeight: FontWeight.bold,
              //     //             color: Colors.black38,
              //     //           ),
              //     //         ),
              //     //         const SizedBox(
              //     //           width: 10,
              //     //         ),
              //     //         Checkbox(
              //     //           activeColor: Colors.blue,
              //     //           value: b,
              //     //           onChanged: (value) {
              //     //             setState(() {
              //     //               b = !b;
              //     //             });
              //     //           },
              //     //         )
              //     //       ],
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 20,
              //     //     ),
              //     //     Row(
              //     //       children: [
              //     //         const Text(
              //     //           "Patient Diabetes",
              //     //           style: TextStyle(
              //     //             fontSize: 20,
              //     //             fontWeight: FontWeight.bold,
              //     //             color: Colors.black38,
              //     //           ),
              //     //         ),
              //     //         const SizedBox(
              //     //           width: 10,
              //     //         ),
              //     //         Checkbox(
              //     //           activeColor: Colors.blue,
              //     //           value: c,
              //     //           onChanged: (value) {
              //     //             setState(() {
              //     //               c = !c;
              //     //             });
              //     //           },
              //     //         )
              //     //       ],
              //     //     ),
              //     //     const SizedBox(
              //     //       height: 20,
              //     //     ),
              //     //   ],
              //     // ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),

              const Text(
                "Patient Height",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: TextField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Patient Height',
                  ),
                  keyboardType: TextInputType.number,
                  controller: height,
                ),
              ),
              const SizedBox(
                height: 50,
              ),

              // Row(
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         const Text(
              //           "Patient Height",
              //           style: TextStyle(
              //             fontSize: 20,
              //             fontWeight: FontWeight.bold,
              //             color: Colors.black38,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 20,
              //         ),
              //         SizedBox(
              //           height: 50,
              //           width: 300,
              //           child: TextField(
              //             decoration: const InputDecoration(
              //               border: OutlineInputBorder(),
              //               hintText: 'Enter Patient Height',
              //             ),
              //             keyboardType: TextInputType.number,
              //             controller: height,
              //           ),
              //         ),
              //         const SizedBox(
              //           height: 50,
              //         ),
              //       ],
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //   ],
              // ),
              CheckboxListTile(
                value: a,
                title: const Text(
                  "Patient Diabetes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    a = !a;
                  });
                },
              ),
              CheckboxListTile(
                value: b,
                title: const Text(
                  "Patient Heart Disease",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    b = !b;
                  });
                },
              ),
              CheckboxListTile(
                value: c,
                title: const Text(
                  "Patient High Blood Pressure",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black38,
                  ),
                ),
                activeColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    c = !c;
                  });
                },
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: MaterialButton(
                  // onPressed: ()  async {
                  //   await Firebase.initializeApp();
                  //   FirebaseAuth.instance
                  //       .signInWithEmailAndPassword(
                  //       email: "ali@gmail.com", password: "0123456")
                  //       .then((value) {
                  //     FirebaseFirestore.instance.collection('patient').add({
                  //       'name': name.text,
                  //       'email': email.text,
                  //       'phone': phone.text,
                  //       'id': id.text,
                  //       'address': address.text,
                  //       'marital_status': marital_status.text,
                  //       'height': height.text,
                  //       'diabetes': a,
                  //       'heart_disease': b,
                  //       'high_blood_pressure': c,
                  //     }).then((value) {
                  //       getPatients();
                  //       setState(() async {
                  //         // database.getConnection().then((conn) {
                  //         //
                  //         // }
                  //         // );
                  //         // db.openDataBase();
                  //         // db.insertPatient(patient(
                  //         //   name: name.text,
                  //         //   email: mail.text,
                  //         //   phone: phone.text,
                  //         //   id: id.text,
                  //         //   address: address.text,
                  //         //   marital_status: marital_status.text,),
                  //         //     name: '',
                  //         //     email: '',
                  //         //     address: '',
                  //         //     marital_status: '',
                  //         //     Blood_Type: '',
                  //         //     phone: '',
                  //         // );
                  //         // p.add(patient(
                  //         //   name: name.text,
                  //         //   email: mail.text,
                  //         //   phone: phone.text,
                  //         //   id: id.text,
                  //         //   address: address.text,
                  //         //   marital_status: marital_status.text,));
                  //         print("P: $p");
                  //         print(p.length);
                  //         Navigator.push(context, MaterialPageRoute(builder:(context)=> const HomeScreen()));
                  //       });
                  //
                  //       print(value.id);
                  //       FirebaseFirestore.instance.collection('patient').doc(value.id).update({
                  //         'id': value.id,
                  //       });
                  //     });
                  //     //
                  //     // FirebaseFirestore.instance.collection('patient').add({
                  //     //   'name': name.text,
                  //     //   'email': email.text,
                  //     //   'phone': phone.text,
                  //     //   'id': id.text,
                  //     //   'address': address.text,
                  //     //   'marital_status': marital_status.text,
                  //     //   'height': height.text,
                  //     //   'diabetes': a,
                  //     //   'heart_disease': b,
                  //     //   'high_blood_pressure': c,
                  //     // }).then((value) {
                  //     //   print(value.id);
                  //     //   FirebaseFirestore.instance.collection('patient').doc(value.id).update({
                  //     //     'id': value.id,
                  //     //   });
                  //     // });
                  //     // print(p);
                  //     // print(p.length);
                  //     // Navigator.push(context, MaterialPageRoute(builder:(context)=> const HomeScreen()));
                  //   });
                  // },
                  onPressed: () async {
                    await Firebase.initializeApp();
                    try {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: "ali@gmail.com",
                        password: "0123456",
                      );
                      final patientRef =
                          FirebaseFirestore.instance.collection('patient');
                      final Patient = {
                        'name': name.text,
                        'email': email.text,
                        'phone': phone.text,
                        'id': id.text,
                        'address': address.text,
                        'marital_status': marital_status.text,
                        'height': height.text,
                        'diabetes': a,
                        'heart_disease': b,
                        'high_blood_pressure': c,
                      };
                      final docRef = await patientRef.add(Patient);
                      final docId = docRef.id;
                      await patientRef.doc(docId).update({'id': docId});
                      setState(() {
                        // Update the state of the widget tree here.
                        // For example, you can navigate to the next screen.
                        // getPatients();
                        p.add(
                          patient(
                            name: name.text,
                            email: email.text,
                            phone: phone.text,
                            id: id.text,
                            address: address.text,
                            marital_status: marital_status.text,
                            weight: weight.text,
                            height: height.text,
                            blood: blood.text,
                            DOB: DOB.text,
                          ),
                        );
                        print("p: p");
                        print("p.length: ${p.length}");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      });
                    } catch (e) {
                      // Handle errors here.
                      print(e);
                    }
                  },

                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: SizedBox(
                    width: 150,
                    height: 50,
                    child: Center(
                      child: Text("Register".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
