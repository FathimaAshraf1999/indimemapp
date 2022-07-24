import 'package:flutter/material.dart';

const kInputFieldDecoration = InputDecoration(
  hintText: 'Enter your name',
  hintStyle: TextStyle(color: Colors.white),
  contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
  filled: true,
  fillColor: Colors.black,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
  ),
);
const kTextStyle = TextStyle(
    fontFamily: 'Open_Sans', fontWeight: FontWeight.w700, color: Colors.white);
