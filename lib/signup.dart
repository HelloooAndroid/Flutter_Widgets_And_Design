import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'User.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

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

              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
              child:Container(
                  padding: EdgeInsets.fromLTRB(15, 40, 0, 0),
                  child:  ImageIcon(AssetImage('assets/ic_back.png'))
              )
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(25, 100, 0, 0),
                  child: Text('SignUp',
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
                      labelText: "NAME",
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
                      labelText: "CONTACT",
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
                SizedBox(height: 30),
                Container(
                  height: 40.0,
                  child: Material(
                      borderRadius: BorderRadius.circular(20),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Text('SIGN UP',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'jost',
                                fontWeight: FontWeight.bold,
                              ))),
                    ),
                  ),
                )

              ]))
        ],
      ),
    );
  }
}
