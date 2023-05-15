// import 'package:appointment_system/Modules/ListPatient/ListPatient.dart';
import 'package:appointment_system/Modules/ListPatient/PatientDataBase.dart';
import 'package:appointment_system/Modules/ListPatient/mysql.dart';
import 'package:appointment_system/models/PatientModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class PatientView extends StatefulWidget {
  const PatientView({Key? key, required this.userData}) : super(key: key);
  // AddPatient({super.key, required this.userData});
 final userData;


  @override
  State<PatientView> createState() => _PatientViewState(userData: userData);
}

class _PatientViewState extends State<PatientView> {
  _PatientViewState ({required this.userData});
  final patient userData;
  // var database = PatientDataBase();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Patient Medical Record',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Personal data",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     const Text(
              //       "Patient Name:",
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.black38,
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Text('${userData.name}',
              //       style: TextStyle(
              //           fontSize: 20.0,
              //           color: Colors.black,
              //       ),
              //     ),
              //     // const SizedBox(
              //     //   width: 100,
              //     // ),
              //     Spacer(),
              //     const Text(
              //       "Patient ID:",
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.black38,
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Text('${userData.id}',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.black,
              //       ),
              //     ),
              //     Spacer(),
              //     const Text(
              //       "Patient Mail:",
              //       style: TextStyle(
              //         fontSize: 20,
              //         fontWeight: FontWeight.bold,
              //         color: Colors.black38,
              //       ),
              //     ),
              //     const SizedBox(
              //       width: 50,
              //     ),
              //     Text('${userData.email}',
              //       style: TextStyle(
              //         fontSize: 20.0,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ],
              // ),


              const Text(
                "Patient Name:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(userData.name,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height:30),
              const Text(
                "Patient Phone:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(userData.phone,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              // const Spacer(),
              const SizedBox(height:30),
              const Text(
                "Patient ID:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(userData.id,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height:30),
              const Text(
                "Patient Address:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(userData.address,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              // const Spacer(),
              const SizedBox(height:30),
              const Text(
                "Patient Email:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(userData.email,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height:30),
              const Text(
                "Patient Marital Status:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(userData.marital_status,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.start,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             const Text(
              //               "Patient Name:",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black38,
              //               ),
              //             ),
              //             const SizedBox(
              //               height: 50,
              //             ),
              //             Text(userData.name,
              //               style: const TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(height:30),
              //         Row(
              //           children: [
              //             const Text(
              //               "Patient Phone:",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black38,
              //               ),
              //             ),
              //             const SizedBox(
              //               height: 50,
              //             ),
              //             Text(userData.phone,
              //               style: const TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //     const Spacer(),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             const Text(
              //               "Patient ID:",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black38,
              //               ),
              //             ),
              //             const SizedBox(
              //               width: 50,
              //             ),
              //             Text(userData.id,
              //               style: const TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(height:30),
              //         Row(
              //           children: [
              //             const Text(
              //               "Patient Address:",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black38,
              //               ),
              //             ),
              //             const SizedBox(
              //               width: 50,
              //             ),
              //             Text(userData.address,
              //               style: const TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //     const Spacer(),
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             const Text(
              //               "Patient Email:",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black38,
              //               ),
              //             ),
              //             const SizedBox(
              //               width: 50,
              //             ),
              //             Text(userData.email,
              //               style: const TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ],
              //         ),
              //         const SizedBox(height:30),
              //         Row(
              //           children: [
              //             const Text(
              //               "Patient Marital Status:",
              //               style: TextStyle(
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.bold,
              //                 color: Colors.black38,
              //               ),
              //             ),
              //             const SizedBox(
              //               width: 50,
              //             ),
              //             Text(userData.marital_status,
              //               style: const TextStyle(
              //                 fontSize: 20.0,
              //                 color: Colors.black,
              //               ),
              //             ),
              //           ],
              //         ),
              //       ],
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 3,
                width: double.infinity,
                color: Colors.black38,
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
