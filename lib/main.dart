import 'package:flutter/material.dart';

class CustomColors {
  static const Color RandomColor1 = Color(0xFF808080);
}

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Color(0xFF808080),
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Movie App"),
      ),
    );
  }
}
