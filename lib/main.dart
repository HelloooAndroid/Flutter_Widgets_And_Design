import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'signup.dart';
import 'home.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new Login(),
        '/signup': (BuildContext context) => new SignupPage(),
        '/home': (BuildContext context) => new Home()
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomeScreen() //Home(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    String asset = "assets/anim/liquid_loader.flr";
    var _size = MediaQuery.of(context).size;
    return SplashScreen.callback(
      name: asset,
      onSuccess: (data) {
        Navigator.of(context).pushNamed('/login');
      },
      onError: (e,s){
      },
      height: _size.height,
      loopAnimation: 'Untitled',
      backgroundColor: Colors.white,
      startAnimation: '0',
      until: () => Future.delayed(Duration(seconds: 2)),
      endAnimation: '1',
    );
  }
}

