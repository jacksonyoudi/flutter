import 'package:flutter/material.dart';
import 'navigate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigatio",
      home: NavigateWidget(),
    );
  }
}
