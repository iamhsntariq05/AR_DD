import 'package:ardd/Login_page.dart';
import 'package:ardd/company.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcomescreen extends StatefulWidget {
  @override
  _WelcomescreenState createState() => _WelcomescreenState();
}

class _WelcomescreenState extends State<Welcomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              image: DecorationImage(
                image: AssetImage("assets/images/doctor.png"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Color(0XFF7ED48D).withOpacity(0.2), BlendMode.dstATop),
              ),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: 400,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(280, 20, 0.0, 0.0),
                    child: Text(
                      "Scan QR",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      "FDD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextButton(
                      child: Text("Company",
                          style: TextStyle(
                            fontSize: 14,
                          )),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(120, 18, 130, 18)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.black),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.white)))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      child: Text("Wholesaler",
                          style: TextStyle(
                            fontSize: 14,
                          )),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(120, 18, 130, 18)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Colors.greenAccent),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.white)))),
                      onPressed: () => null),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                      child: Text("Pharmasist",
                          style: TextStyle(
                            fontSize: 14,
                          )),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.fromLTRB(120, 18, 130, 18)),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      side: BorderSide(color: Colors.white)))),
                      onPressed: () => null),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          TextButton(
              child: Text("GET STARTED",
                  style: TextStyle(
                    fontSize: 14,
                  )),
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.fromLTRB(120, 18, 130, 18)),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0XFF42AD9B)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          side: BorderSide(color: Colors.greenAccent)))),
              onPressed: () => null),
        ],
      ),
    );
  }
}
