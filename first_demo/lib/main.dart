import 'package:flutter/material.dart';
import 'bottom_navigation.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter bottomNavigationBar",
      theme: ThemeData.light(),
      home: BottomNavigationWidget(),
    );
  }
}



