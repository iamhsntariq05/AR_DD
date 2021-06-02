import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedicineID extends StatefulWidget {
  @override
  _MedicineIDState createState() => _MedicineIDState();
}

class _MedicineIDState extends State<MedicineID> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image(
          image: AssetImage('assets/images/plus.png'),
        ),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 0.0, 20),
                child: Text(
                  "Medicine ID",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              textfield("Medicine Name"),
              textfield("Manufacture Date"),
              textfield("Expiry Date"),
              textfield("Purchase Price"),
              textfield("Sale Price"),
              textfield("Pack Unit"),
              textfield("Stock"),
              textfield("Batch no"),
              textfield("Location"),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 20.0, 40),
                child: TextButton(
                    child: Text("Save",
                        style: TextStyle(
                          fontSize: 14,
                        )),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.fromLTRB(100, 18, 100, 18)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    side: BorderSide(color: Colors.white)))),
                    onPressed: () => null),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding textfield(String word) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0.0, 20, 10),
      child: TextField(
        // controller: someTextXontroller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: word,
          hintStyle: TextStyle(color: Colors.green),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60),
            borderSide: BorderSide(
              color: Colors.greenAccent,
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          contentPadding: EdgeInsets.all(16),
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
