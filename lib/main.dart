import 'package:ardd/Login_page.dart';
import 'package:ardd/company.dart';
import 'package:ardd/manageuser.dart';
import 'package:ardd/medicineid.dart';
import 'package:ardd/salesdetails.dart';
import 'package:ardd/signup.dart';
import 'package:ardd/viewpurchase.dart';
import 'package:ardd/welcomescreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Welcomescreen(),
    );
  }
}

// Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Already have an account?",
//                 style: TextStyle(
//                   color: Color(0XFF42AD9B),
//                 ),
//               ),
//               SizedBox(
//                 width: 5,
//               ),
//               GestureDetector(
//                 child: Text(
//                   "Log In",
//                   style: TextStyle(
//                     color: Color(0XFFA0B4BD),
//                   ),
//                 ),
//                 onTap: () => {},
//               ),
//             ],
//           ),
