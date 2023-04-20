import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading extends StatelessWidget {
  const Heading({Key? key,
     required this.title,
     required this.alignText,
     required this.size,
     required this.color,
  }) : super(key: key);

  final String title;
  final TextAlign alignText;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(title,
      textAlign: alignText,
      style:  GoogleFonts.aBeeZee(
          fontSize: size,
          color: color,
          fontWeight: FontWeight.w800
      ),
    );
  }
}
