import 'package:flutter/material.dart';

abstract class ColorsClass {
  static const blueColor = Color(0xFF0000CD);
  static const redColor = Color(0xFFff4747);
  static const yellowColor = Color.fromARGB(233, 255, 200, 0);
  static const whiteColor = Color(0xFFF5F5F5);

  static const firstRegisterationColor = Color.fromARGB(255, 106, 48, 68);
  static const kPrimaryLightColor = Color(0xFFF1E6FF);

  static const messageLightBlue = Color(0xFF00C6F5);
  static const messageDarkBlue = Color(0xFF0078F5);

  static const brownColor = Color.fromARGB(255, 78, 44, 1);
  static const lightBrown = Color.fromARGB(255, 167, 112, 40);

  static const lightGreen = Color.fromARGB(255, 213, 157, 85);
  static const lightBlue = Color.fromARGB(255, 153, 103, 37);
  static const lightGrey = Color(0xFFC9BBC8);
  static const lightRed = Color(0xFFE5C1Cd);
  static const lightYellow = Color(0xFFF3DBCF);

  static const gredient1 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      lightGreen,
      lightBlue,
    ],
  );
  static const gredient2 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      lightBlue,
      lightRed,
    ],
  );
  static const gredient3 = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(255, 30, 147, 219),
      Color.fromARGB(255, 101, 162, 211),
    ],
  );
}


// for gredient...
  // Color(0xFF455054),
  // Color(0xFF308695)

  //  Color(0xFFD45769),
  //  Color(0xFFD4CFC9),