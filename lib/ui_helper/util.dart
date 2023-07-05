import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle TextStyle1(
    {Color textColor = Colors.black,
    FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
    fontSize: 31, fontWeight: FontWeight.bold,
    //blah blah other attributes
  );
}

TextStyle TextStyle2() {
  return TextStyle(fontSize: 17, color: Colors.white
      //blah blah other attributes
      );
}

TextStyle TextStyle3() {
  return TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey
      //blah blah other attributes
      );
}

TextStyle TextStyle4() {
  return TextStyle(fontSize: 11, fontWeight: FontWeight.bold, color: Colors.grey
      //blah blah other attributes
      );
}

TextStyle TextStyle5(
    {Color textColor = const Color.fromARGB(255, 117, 166, 250),
    FontWeight fontWeight = FontWeight.bold}) {
  return TextStyle(fontSize: 51, color: textColor, fontWeight: fontWeight
      //blah blah other attributes
      );
}
