import 'package:fantasia/app/theme/app_colors.dart';
import 'package:fantasia/app/theme/app_font.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<ThemeData> appThemes = <ThemeData>[
  lightTheme,
  darkTheme,
];

ThemeData lightTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: colorWhite,
  appBarTheme: AppBarTheme(
    brightness: Brightness.dark,
    backgroundColor: colorBlue,
    titleTextStyle: fontHeading1,
  ),
  textTheme: GoogleFonts.openSansTextTheme(),
  primaryColor: colorBlue,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(colorYellow),
  )),
);

ThemeData darkTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  textTheme: GoogleFonts.openSansTextTheme(),
  primaryColor: colorBlue,
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(colorYellow),
  )),
);
