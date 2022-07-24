import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//buttons
class ReuseButton extends StatelessWidget {
  final title;
  final onTap;
  ReuseButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 28,
        width: 75,
        decoration: BoxDecoration(
          color: Color(0xff2AAD60),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
