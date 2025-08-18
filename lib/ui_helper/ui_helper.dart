import 'dart:ui';

import 'package:flutter/material.dart';

/// Text Style Helper


TextStyle mTextStyle18({
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.black
}) => TextStyle(
  fontSize: 18,
  fontWeight: fontWeight,
  color: color
);




TextStyle mTextStyle20({
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.black
}) => TextStyle(
    fontSize: 20,
    color: color,
    fontWeight: fontWeight,
    );

TextStyle mTextStyle25({
Color color = Colors.black,
FontWeight fontWeight = FontWeight.normal
}) => TextStyle(
fontSize: 25,
color: color,
fontWeight: fontWeight
);
TextStyle mTextStyle30 ({
  Color color = Colors.black,
  FontWeight fontWeight = FontWeight.normal
}) => TextStyle(
  fontSize: 30,
  color: color,
  fontWeight: fontWeight
);


/// TextField Helper

InputDecoration mInputDecoration({
  Color? fillColor,
  String hintText = '',
  String lableText = "",
  IconData pexfixIcon = Icons.person,
  String? name,

}) => InputDecoration(
 fillColor: fillColor  ?? Colors.white,
  filled: true,
  hintText: hintText,
  labelText: lableText,
  prefixIcon: Icon(pexfixIcon),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.black, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.lightBlueAccent , width: 2),
  ),


);


