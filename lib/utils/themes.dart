import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemesModeData {
  //Light mode
  final ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    fontFamily: GoogleFonts.poppins().fontFamily,
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: Colors.black,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  //dark mode
  final ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    fontFamily: GoogleFonts.poppins().fontFamily,
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 21, 21, 21),
      titleTextStyle: TextStyle(
        fontFamily: GoogleFonts.poppins().fontFamily,
        color: Colors.white,
        fontSize: 20,
      ),
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 21, 21, 21),
  );
}
