// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeColorApp {
  static final purple = Color(0xFF5117AC);
  static final green = Color(0xFF20D0C4);
  static final blue = Color(0xFF1B9EEA);
  static final dark = Color(0xFF03091E);
  static final grey = Color(0xFF212738);
  static final lightGrey = Color(0xFFBBBBBB);
  static final veryLightGrey = Color(0xFFF3F3F3);
  static final pink = Color(0xFFF5638B);
  static final white = Color(0xFFFFFFFF);
}


final borderOutline = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
        color: ThemeColorApp.lightGrey, width: 2, style: BorderStyle.solid));
final lightTheme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme().apply(
        bodyColor: ThemeColorApp.white, displayColor: ThemeColorApp.white),
    inputDecorationTheme: InputDecorationTheme(
        border: borderOutline,
        enabledBorder: borderOutline,
        focusedBorder: borderOutline));

