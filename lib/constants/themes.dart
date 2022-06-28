

import 'package:flutter/material.dart';

class Palette {
  static const Color background = Colors.white;
  static const Color secondaryBackground = Color(0xFFE7E4D3);
  static const Color green = Color(0xFF2AAF61);

  static const kBorderRadius10 = BorderRadius.only(
    topLeft: Radius.circular(10),
    topRight: Radius.circular(10),
    bottomLeft: Radius.circular(10),
    bottomRight: Radius.circular(10),
  );

  static const kBorderRadius20 = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
    bottomLeft: Radius.circular(20),
    bottomRight: Radius.circular(20),
  );

  static const kBorderRadius15 = BorderRadius.only(
    topLeft: Radius.circular(15),
    topRight: Radius.circular(15),
    bottomLeft: Radius.circular(15),
    bottomRight: Radius.circular(15),
  );

  static const kBorderRadius30 = BorderRadius.only(
    topLeft: Radius.circular(30),
    topRight: Radius.circular(30),
    bottomLeft: Radius.circular(30),
    bottomRight: Radius.circular(30),
  );

//text styles
  static const kTitleStyle = TextStyle(
    color: Color.fromRGBO(0, 0, 0, 1),
    fontFamily: "SF Pro Text Regular",
    fontSize: 20,
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
    height: 1,
  );

  static const kSubtitleStyle = TextStyle(
    color: Color.fromRGBO(59, 57, 54, 1),
    fontFamily: 'Rubik',
    fontSize: 24,
    letterSpacing: -0.5,
    fontWeight: FontWeight.w400,
  );

  static const bodyTextSyle = TextStyle(
      color: Colors.black,
      fontFamily: "SF Pro Text Regular",
      fontSize: 16,
      letterSpacing: 0,
      fontWeight: FontWeight.normal,
      height: 1);
}