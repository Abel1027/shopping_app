import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();
  static const Color primary = Color(0xff4a5859);
  static const Color accent = Color(0xffc83e4d);

  static final themeData = ThemeData(
    brightness: Brightness.light,

    /// When this color is modified, colors.xml must be modified too.
    primaryColor: primary,
    scaffoldBackgroundColor: Color(0xfffceed9),
    backgroundColor: Colors.white,
    accentColor: accent,
    dividerColor: Colors.black54,
    focusColor: Colors.greenAccent,
    indicatorColor: accent,

    iconTheme: IconThemeData(color: accent),
    textTheme: TextTheme(
      /// Titles in ListTiles and ExpansionTile, texts in TextFields
      subtitle1: TextStyle(
        fontFamily: 'ProductSans-Medium',
        fontSize: 15.0,
        color: accent,
      ),

      subtitle2: TextStyle(
        fontFamily: 'ProductSans-Medium',
        fontSize: 15.0,
        color: Colors.black54,
      ),

      headline6: TextStyle(color: accent),

      /// CustomErrorWidget title
      headline5: TextStyle(color: accent),

      /// Flat and raised buttons
      button: TextStyle(
        fontFamily: 'ProductSans-Bold',
        fontSize: 15.0,
        color: primary,
      ),
    ),

    /// Default font
    fontFamily: 'ProductSans-Medium',

    dialogTheme: DialogTheme(
      contentTextStyle: TextStyle(
        fontFamily: 'ProductSans-Medium',
        fontSize: 15.0,
        color: Colors.black54,
      ),
      titleTextStyle: TextStyle(
        fontFamily: 'ProductSans-Bold',
        fontSize: 18.0,
        color: accent,
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      contentTextStyle: TextStyle(
        fontFamily: 'ProductSans-Medium',
        color: Colors.white,
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      textStyle: TextStyle(
        fontFamily: 'ProductSans-Regular',
        fontSize: 15.0,
        color: accent,
      ),
    ),
  );
}
