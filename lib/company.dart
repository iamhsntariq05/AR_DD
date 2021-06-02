import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ardd/medicineid.dart';
import 'package:ardd/manageuser.dart';
import 'package:ardd/salesdetails.dart';

class Companyscreen extends StatefulWidget {
  @override
  _CompanyscreenState createState() => _CompanyscreenState();
}

class _CompanyscreenState extends State<Companyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 1,
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
                  SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Text(
                      "Company Dashboard",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 160,
                  ),
                  TextButton(
                    child: Text("Add Medicine",
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
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MedicineID()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    child: Text("Add User",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(120, 18, 160, 18)),
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.greenAccent),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.white)))),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ManageUser()),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    child: Text("Manage record",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(110, 18, 135, 18)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.white)))),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SalesDetails()),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
