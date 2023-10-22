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
    /// nazwa aplikacji
    displayLarge: GoogleFonts.getFont(
      'Open Sans',
      fontSize: 30,
      color: primaryColor,
      fontWeight: FontWeight.bold,
    ),

    /// przycisk Login
    displayMedium: GoogleFonts.getFont(
      'Open Sans',
      fontSize: 20,
      color: whiteColor,
      fontWeight: FontWeight.bold,
    ),

    // tytul ksiazki Dla ciebie
    titleSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),

    // tytul ksiazki w Wybrane
    titleMedium: GoogleFonts.getFont(
      'Lato',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      height: 1.1,
    ),

    // autor ksiazki w Dla ciebie
    headlineSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 12,
      color: lightGreyColor,
    ),

    // nazwa kolekcji Strona glowna
    headlineMedium: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      color: darkGreyColor,
      fontWeight: FontWeight.bold,
    ),

    // tekst naglowek Dla ciebie
    headlineLarge: GoogleFonts.getFont(
      'Lato',
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),

    // gatunek
    labelSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      color: lightGreyColor,
    ),

    // przycisk czytaj
    labelMedium: GoogleFonts.getFont(
      'Roboto',
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: lightGreyColor,
    ),
  ),
  appBarTheme: AppBarTheme(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
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
