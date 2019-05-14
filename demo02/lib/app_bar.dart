import 'package:flutter/material.dart';
import 'view.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  List<Widget> _eachView;
  int _index = 0;


  @override
  void initState() {
    _eachView = List();
    _eachView..add(View("Home"))..add(View("Account"))..add(View("Pages"))..add(View("Airplay"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachView[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
            return View("New Page");
          }));
        },
        tooltip: "play",
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _index= 0;
                });
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.account_box),
              onPressed: () {
                setState(() {
                  _index= 1;
                });
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.airplay),
              onPressed: () {
                setState(() {
                  _index= 2;
                });
              },
              color: Colors.white,
            ),
            IconButton(
              icon: Icon(Icons.pages),
              onPressed: () {
                setState(() {
                  _index= 3;
                });
              },
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
