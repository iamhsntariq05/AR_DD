import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Viewpurchase extends StatefulWidget {
  @override
  _ViewpurchaseState createState() => _ViewpurchaseState();
}

class _ViewpurchaseState extends State<Viewpurchase> {
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
                  "View Purchase",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              textfield("Sales ID"),
              textfield("Name"),
              textfield("Date"),
              textfield("Product"),
              textfield("Quantity"),
              textfield("Product Price"),
              textfield("Total Price"),
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
