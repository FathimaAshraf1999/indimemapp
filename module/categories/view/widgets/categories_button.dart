import 'package:flutter/material.dart';

class categoriesButton extends StatelessWidget {
  categoriesButton(
      {required this.text,
      required this.color,
      required this.height,
      required this.width});

// constructing custom color  and text values
  final String text;
  final Color color;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        alignment: Alignment.center,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15),
        ),
        // specify the height of button
        height: height,
        //specify width of button
        width: width,
        decoration: BoxDecoration(
          // To give a 3D effect to category buttons
          boxShadow: [
            BoxShadow(color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 0.2),
          ],
          color: color,
          borderRadius: BorderRadius.circular(60),
        ),
        margin: EdgeInsets.only(left: 10),
      ),
    );
  }
}
