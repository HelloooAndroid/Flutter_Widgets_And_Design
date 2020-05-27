import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, //for overriding pixel bt keypad
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              child: Stack(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(25, 100, 0, 0),
                  child: Text('Login',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jost'))),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 155, 0, 0),
                  child: Text('Here',
                      style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Jost'))),
              Container(
                  padding: EdgeInsets.fromLTRB(158, 155, 0, 0),
                  child: Text('.',
                      style: TextStyle(
                          fontSize: 65,
                          fontWeight: FontWeight.bold,
                          color: Colors.green)))
            ],
          )),
          Container(
              padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle: (TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: (TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green))),
                  obscureText: true, //for inutType password
                ),
                SizedBox(height: 20),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  child: InkWell(
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: Colors.green,
                          fontFamily: 'jost',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  height: 40.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(20),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: Center(
                          child: Text('LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'jost',
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.0),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //Center(
                        ImageIcon(
                          AssetImage('assets/ic_google.png'),
                          size: 20,
                        ),
                        SizedBox(width: 10.0),
                        Text('Login With google',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'jost',
                              fontWeight: FontWeight.bold,
                            ))
                        // )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('New to app?',
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'jost',
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(width: 5.0),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        child: Text('Register',
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'jost',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline)))
                  ],
                )
              ]))
        ],
      ),
    );
  }
}
