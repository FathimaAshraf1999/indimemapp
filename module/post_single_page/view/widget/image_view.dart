// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  ImageView({required this.src});

  //to pass imageUrl from List post
  final String src;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          //used Network image to perform download function
          image: NetworkImage(src),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
