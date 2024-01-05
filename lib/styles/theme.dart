import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testproject/styles/colors.dart';

/// Custom theme for the application.
ThemeData customTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: seedColor,
    primary: primaryColor,
  ),
  useMaterial3: true,
  textTheme: TextTheme(
    /// Profile
    displaySmall: GoogleFonts.getFont(
      'Open Sans',
      fontSize: 14,
      color: darkGreyColor,
      fontWeight: FontWeight.w400,
    ),

    /// Login button
    displayMedium: GoogleFonts.getFont(
      'Open Sans',
      fontSize: 20,
      color: whiteColor,
      fontWeight: FontWeight.bold,
    ),

    /// Application name
    displayLarge: GoogleFonts.getFont(
      'Open Sans',
      fontSize: 30,
      color: primaryColor,
      fontWeight: FontWeight.bold,
    ),

    /// Title of the book in "For You"
    titleSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),

    /// Title of the book in "Selected"
    titleMedium: GoogleFonts.getFont(
      'Lato',
      fontSize: 16,
      fontWeight: FontWeight.bold,
      height: 1.1,
    ),

    /// Author of the book in "For You"
    headlineSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 12,
      color: lightGreyColor,
    ),

    /// Name of the collection in the home page
    headlineMedium: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      color: darkGreyColor,
      fontWeight: FontWeight.bold,
    ),

    /// Header text in "For You"
    headlineLarge: GoogleFonts.getFont(
      'Lato',
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),

    /// Genre
    labelSmall: GoogleFonts.getFont(
      'Lato',
      fontSize: 14,
      color: lightGreyColor,
    ),

    /// Read button
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
