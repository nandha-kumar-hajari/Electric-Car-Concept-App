import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        // primarySwatch: Colors.indigo.shade300,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: Colors.white,
        buttonColor: Colors.amber[500],
       
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: Colors.indigo[900],
      );
}
