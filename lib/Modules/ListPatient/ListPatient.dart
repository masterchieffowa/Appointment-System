import 'package:appointment_system/models/PatientModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// List<patient> p = [
//   patient(
//       name: "Mahmoud Adel",
//       id: "20202020",
//       email: "mahmoudadel@gmail.com",
//       phone: "01223654789",
//       address: "El Haram",
//       marital_status: "Single"),
//   patient(
//       name: "Ahmed mohammed",
//       id: "30303030",
//       email: "ahmedmohammed@gmail.com",
//       phone: "01223654789",
//       address: "El Haram",
//       marital_status: "Single"),
//   patient(
//       name: "Mohammed Adel",
//       id: "40404040",
//       email: "Mohammedadel@gmail.com",
//       phone: "01223654789",
//       address: "El Haram",
//       marital_status: "Single"),
//
// ];

// get the data from firebase firestore and put it in the list
FirebaseFirestore firestore = FirebaseFirestore.instance;
List<patient> p = [];
Future<void> getPatients() async {
  QuerySnapshot querySnapshot = await firestore.collection("patient").get();
  for (int i = 0; i < querySnapshot.docs.length; i++) {
    var a = querySnapshot.docs[i];
    p.add(patient(
      name: a['name'],
      email: a['email'],
      phone: a['phone'],
      address: a['address'],
      marital_status: a['marital_status'],
      blood: a['Blood_Type'],
      id: a['id'],
    ));
  }
}