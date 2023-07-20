import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/styles/colors.dart';

ThemeData customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: seedColor,
    primary: primaryColor,
  ),
  useMaterial3: true,
  textTheme: TextTheme(
    titleSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ), // tytul ksiazki Dla ciebie
    titleMedium: GoogleFonts.getFont(
      'Lato',
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ), // tytul ksiazki w Wybrane
    headlineSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 12,
      color: lightGreyColor,
    ), // autor ksiazki w Dla ciebie
    headlineMedium: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      color: darkGreyColor,
      fontWeight: FontWeight.bold,
    ), // nazwa kolekcji Strona glowna
    headlineLarge: GoogleFonts.getFont(
      'Lato',
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ), // tekst naglowek Dla ciebie
  ),
  appBarTheme: AppBarTheme(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
      ),
    ),
    backgroundColor: seedColor,
    foregroundColor: whiteColor,
    centerTitle: true,
    titleTextStyle: GoogleFonts.getFont(
      'Lato',
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
);
