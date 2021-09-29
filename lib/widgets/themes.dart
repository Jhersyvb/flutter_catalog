import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.light(),
        primaryColor: Colors.white,
        scaffoldBackgroundColor: creamColor,
        cardColor: Colors.white,
        canvasColor: creamColor,
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.light().copyWith(
            primary: darkBluishColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: darkBluishColor,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: darkBluishColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(),
        primaryColor: Colors.black,
        scaffoldBackgroundColor: darkCreamColor,
        cardColor: Colors.black,
        canvasColor: darkCreamColor,
        buttonTheme: ButtonThemeData(
          colorScheme: ColorScheme.dark().copyWith(
            primary: lightBluishColor,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: lightBluishColor,
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: lightBluishColor,
        ),
        appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  // Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBluishColor = Vx.purple400;
}
