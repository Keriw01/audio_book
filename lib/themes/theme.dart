import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData customTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 255, 136, 0),
      primary: Colors.orange,
    ),
    useMaterial3: true,
    textTheme: TextTheme(
      titleSmall: GoogleFonts.getFont(
        'Lato',
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ), // tytul ksiazki w HOME
      titleMedium: GoogleFonts.getFont('Lato',
          fontSize: 18,
          fontWeight: FontWeight
              .bold), // tytul ksiazki w zakladce LATESTED czy FEATURED
      headlineSmall: GoogleFonts.getFont('Lato',
          fontSize: 20,
          fontWeight: FontWeight.bold), // tekst For You w zakladce Home
      displaySmall: GoogleFonts.getFont('Lato',
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors
              .orange), // dla pomaranczowych znakow, np. w zakladce HOME - FOR YOU
      displayMedium: GoogleFonts.getFont('Lato',
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
          decoration: TextDecoration
              .lineThrough), // // dla szarych, przekreslonych znakow, np. w zakladce HOME - FOR YOU
      bodySmall: GoogleFonts.getFont('Lato',
          fontSize: 12,
          color: const Color.fromARGB(
              255, 94, 94, 94)), // tekst opisu ksiazki w Home -> Featured
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color.fromARGB(255, 188, 188, 188)),
    appBarTheme: AppBarTheme(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))),
      backgroundColor: const Color.fromARGB(255, 248, 133, 1),
      foregroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: GoogleFonts.getFont('Lato',
          fontSize: 20, fontWeight: FontWeight.bold),
    ));
