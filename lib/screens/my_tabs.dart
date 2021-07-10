import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTabs extends StatelessWidget {
  final Color color;
  final String text;
  const AppTabs({Key key, this.color, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 120,
      height: 40,
      child: Text(this.text,
          style: GoogleFonts.comfortaa(fontWeight: FontWeight.bold)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: this.color,
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 7,
              offset: Offset(0, 0),
            )
          ]),
    );
  }
}
