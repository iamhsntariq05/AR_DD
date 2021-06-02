import 'package:ardd/company.dart';
import 'package:ardd/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/animation.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: Colors.black,
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<LoginScreen> with TickerProviderStateMixin {
  AnimationController _controller;
  TextEditingController namecontroller;
  TextEditingController emailcontroller;
  TextEditingController passwordcontroller;
  TextEditingController phonecontroller;
  final _auth = FirebaseAuth.instance;

  double _animationValue;
  bool finished = true;
  bool show;
  String email;
  String password;
  bool sent = false;
  Color _color = Colors.lightBlue;
  double _containerPaddingLeft = 20.0;
  double _translateX = 0;
  double _translateY = 0;
  double _rotate = 0;
  double _scale = 1;

  void initState() {
    super.initState();

    _controller = new AnimationController(
        duration: Duration(milliseconds: 1500), vsync: this);
    show = true;

    _controller.addListener(() {
      setState(() {
        show = false;

        _animationValue = _controller.value;
        if (_animationValue >= 0.2 && _animationValue < 0.4) {
          _containerPaddingLeft = 120.0;
          _color = _color;
        } else if (_animationValue >= 0.4 && _animationValue <= 0.5) {
          _translateX = 80.0;
          _rotate = -20.0;
          _scale = 0.1;
        } else if (_animationValue >= 0.5 && _animationValue <= 0.8) {
          _translateY = -20.0;
        } else if (_animationValue >= 0.81) {
          _containerPaddingLeft = 20.0;
          sent = true;
        }
      });
    });
    _controller
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _controller.repeat();
          });
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Companyscreen()),
          );
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              child: Image(
                image: AssetImage('assets/images/login.png'),
                fit: BoxFit.fitHeight,
                height: 750,
                alignment: Alignment.center,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 150, top: 90),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Card(
                            color: Colors.black,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                  width: 2.6,
                                  color: Colors.blueGrey,
                                )),
                            child: Container(
                              height: 50,
                              width: 50,
                              child: Icon(
                                Icons.verified_user_rounded,
                                color: Colors.orangeAccent[400],
                                size: 34,
                              ),
                            )),
                      ]),
                ),
                SizedBox(height: 10),
                Padding(
                    padding: EdgeInsets.only(
                      left: 123,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Colors.orange,
                                  offset: Offset(
                                    -6,
                                    -2,
                                  ),
                                )
                              ],
                            ),
                            child: Text(
                              'Pharmacure'.toUpperCase(),
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontFamily: 'myfont2',
                              ),
                            ))
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: LoginSpace(context),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: LOgicButton(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Register Now ",
                        style: TextStyle(
                          color: Color(0XFF42AD9B),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          onTap: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()),
                                )
                              }),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Widget LoginSpace(context) {
    final data = MediaQuery.of(context);
    return Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: data.size.height / 40,
            ),
            Padding(
                padding: EdgeInsets.only(left: 60, right: 20),
                child: TextFormField(
                  autofocus: false,
                  obscureText: false,
                  // validator: (input) => input.length < 6
                  //     ? 'should be atleast 6 charactors'
                  //     : 'thanks',
                  controller: emailcontroller,
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.black54,
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                )),
            SizedBox(
              height: data.size.height / 30,
            ),
            Padding(
                padding: EdgeInsets.only(left: 60, right: 20),
                child: TextFormField(
                  validator: (input) => input.length < 8
                      ? 'password should be atleast 8 digits'
                      : null,
                  autofocus: false,
                  obscureText: true,
                  controller: passwordcontroller,
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.brown,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.black54,
                    ),
                    hintText: 'Password...',
                    hintStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),
                )),
          ]),
    );
  }

  Widget LOgicButton() {
    return FlatButton(
//         child: Text(
//           'LOgin',
//           style: TextStyle(color: Colors.yellow, fontSize: 30),
//         ),
//         onPressed: () {
//           Navigator.pushNamed(context, '/fuckfuck');
//         });
//   }
// }
        padding: EdgeInsets.zero,
        child: Center(
          child: GestureDetector(
            onTap: () async {
              try {
                final newUser = await _auth.signInWithEmailAndPassword(
                    email: email, password: password);
                if (newUser != null) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Companyscreen()),
                  );
                }
              } catch (e) {
                print(e);
              }
              // _controller.forward();
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(100.0),
                boxShadow: [
                  BoxShadow(
                    color: _color,
                    blurRadius: 21,
                    spreadRadius: -15,
                    offset: Offset(
                      0.0,
                      20.0,
                    ),
                  )
                ],
              ),
              padding: EdgeInsets.only(
                  left: _containerPaddingLeft,
                  right: 20.0,
                  top: 10.0,
                  bottom: 10.0),
              duration: Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              child: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                (!sent)
                    ? AnimatedContainer(
                        duration: Duration(milliseconds: 400),
                        child: Icon(Icons.send),
                        curve: Curves.fastOutSlowIn,
                        transform: Matrix4.translationValues(
                            _translateX, _translateY, 0)
                          ..rotateZ(_rotate)
                          ..scale(_scale),
                      )
                    : Container(),
                AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 600),
                  child: show ? SizedBox(width: 10.0) : Container(),
                ),
                AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 100),
                  child: show ? Text("Login In") : Container(),
                ),
                AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 200),
                  child: sent ? Icon(Icons.done) : Container(),
                ),
                AnimatedSize(
                  vsync: this,
                  alignment: Alignment.topLeft,
                  duration: Duration(milliseconds: 600),
                  child: sent ? SizedBox(width: 10.0) : Container(),
                ),
                AnimatedSize(
                  vsync: this,
                  duration: Duration(milliseconds: 200),
                  child: sent ? Text("Welcome") : Container(),
                ),
              ]),
            ),
          ),
        ),
        onPressed: () {
          secondscreen(context);
        });
  }

  Future<void> secondscreen(context) async {
    if (_controller.isCompleted) {
      setState(() {
        finished = false;
      });
    }
  }
}
