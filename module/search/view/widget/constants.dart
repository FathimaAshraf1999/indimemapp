import 'package:flutter/material.dart';

///search box
const kSearchBoxStyle = InputDecoration(
  prefixIcon: Icon(
    Icons.search,
    color: Colors.white60,
  ),
  labelText: 'Search here',
  labelStyle: TextStyle(
    color: Colors.white60,
    fontFamily: 'Open_Sans',
  ),
  filled: true,
  fillColor: Color(0xff262626),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10.0)),
    borderSide: BorderSide.none,
  ),
  focusColor: Colors.black12,
);

///appbar title
const kTitleText = Text(
  'Search',
  style: TextStyle(
    fontFamily: 'Open_Sans',
    fontSize: 30,
    fontWeight: FontWeight.bold,
  ),
);

///posted time style
const kPostedTymStyle =
    TextStyle(fontSize: 13, color: Colors.blueGrey, fontFamily: 'Open_Sans');

const kUpvoteStyle = TextStyle(
  fontFamily: 'Open_Sans',
  fontSize: 13,
);

const kNameStyle = TextStyle(fontFamily: 'Open_Sans');
