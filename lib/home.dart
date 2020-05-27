import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_fragment_widget.dart';
import 'search_fragment_widget.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  String _selectedNavigatorName = "Home";
  final List<Widget> _children = [
    HomeFragmentWidget(),
    SearchFragmentWidget(Colors.amberAccent[200]),
    SearchFragmentWidget(Colors.blue[200]),
    SearchFragmentWidget(Colors.deepPurpleAccent[200]),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedNavigatorName = "Home";
      } else if (index == 1) {
        _selectedNavigatorName = "Search";
      } else if (index == 2) {
        _selectedNavigatorName = "Notification";
      } else if (index == 3) {
        _selectedNavigatorName = "Account";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, //for overriding pixel bt keypad
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(_selectedNavigatorName),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add_alert),
              tooltip: 'Show Snackbar',
              onPressed: () {
                //scaffoldKey.currentState.showSnackBar(snackBar);
              },
            ),IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Show Snackbar',
              onPressed: () {
                //scaffoldKey.currentState.showSnackBar(snackBar);
              },
            )
          ]),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('Notification'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        //initial index
        onTap: _onItemTapped,
      ),
    );
  }
}
