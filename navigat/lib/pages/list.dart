import 'package:flutter/material.dart';

class ListOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: Center(
        child: Text("List", style: TextStyle(color: Colors.red),),
      ),
    );
  }
}
