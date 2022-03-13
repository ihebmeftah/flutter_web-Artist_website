import 'package:flutter/material.dart';
import 'package:get/get.dart';

const Color darkGreyClr = Color(0xFF121212);
const Color pinkClr = Color(0xFFff4667);
const Color kCOlor1 = Color(0xff685959);
const Color kCOlor2 = Color(0xffADA79B);
const Color kCOlor3 = Color(0xffA5947F);
const Color kCOlor4 = Color(0xff738B71);
const Color kCOlor5 = Color(0xff6D454D);

class ThemesApp {
  static final light = ThemeData(
    primaryColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.black, size: 50),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.white,
      // Icon Theme for App
      iconTheme:
          IconThemeData(color: Color.fromARGB(255, 255, 255, 255), size: 25),
      // text theme of appbar
      toolbarTextStyle: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black) /* Text theme in The appbar*/,
    ),
    brightness: Brightness.light,
    primarySwatch: Colors.red, // main color
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      elevation: 0.0,
      selectedIconTheme: IconThemeData(size: 30),
      selectedItemColor: Colors.black,
      selectedLabelStyle: TextStyle(fontSize: 12),
      unselectedLabelStyle: TextStyle(fontSize: 12),
    ),
    // Use backgroundColor: context.theme.backgroundColor In Scaffold ,
  );

  static final dark = ThemeData(
    appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 8, 8, 8)),
    iconTheme: const IconThemeData(color: Colors.white, size: 30),
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
  );

  //------TITLE STYLE-------
  TextStyle get titleStyle {
    return const TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2);
  }

  TextStyle get subTitleStyle {
    return const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
  }

  //------HEADING STYLE-------

  TextStyle get headingStyle {
    return const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  }

  TextStyle get subHeadingStyle {
    return const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  }

  //------BODY STYLE-------

  TextStyle get bodyStyle1 {
    return const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  }

  TextStyle get bodyStyle2 {
    return const TextStyle(fontSize: 14, fontWeight: FontWeight.w400);
  }

  //------CUSTOMIZED-------

  TextStyle get customized1 {
    return TextStyle(
        color: Get.isDarkMode ? Colors.white : darkGreyClr,
        fontSize: 24,
        fontWeight: FontWeight.bold);
  }

  TextStyle get customized {
    return TextStyle(
        color: Get.isDarkMode ? Colors.white : darkGreyClr,
        fontSize: 20,
        fontWeight: FontWeight.bold);
  }
}
