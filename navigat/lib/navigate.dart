import 'package:flutter/material.dart';
import 'pages/email.dart';
import 'pages/list.dart';
import 'pages/account.dart';
import 'pages/home.dart';

class NavigateWidget extends StatefulWidget {
  @override
  _NavigateWidgetState createState() => _NavigateWidgetState();
}

class _NavigateWidgetState extends State<NavigateWidget> {
  final _BottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list..add(Home())..add(Account())..add(ListOne())..add(Email());
    super.initState();
  }

  @override
  void setState(fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email,
              color: Colors.blue,
            ),
            title: Text("Email", style: TextStyle(color: Colors.blue)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.blue,
            ),
            title: Text("List", style: TextStyle(color: Colors.blue)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: Colors.blue,
            ),
            title: Text("Account", style: TextStyle(color: Colors.blue)),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
