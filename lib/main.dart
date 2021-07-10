import 'package:flutter/material.dart';
import 'package:myapp/screens/detailed_audio_page.dart';
import 'package:myapp/screens/home_page.dart';

import './screens/detailed_audio_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
