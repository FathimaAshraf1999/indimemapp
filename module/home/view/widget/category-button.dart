import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/home/view/widget/constants.dart';

class CategoryButton extends StatelessWidget {
  CategoryButton({required this.text, required this.color});

  final String text;
  final Color color;
//Creating a reusable page to reuse the category Button.
  @override
  Widget build(BuildContext context) {

    return Align(
      child: SizedBox(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: kBtnStyle,
          ),
          height: 35.0,
          width: 70.0,
          decoration: BoxDecoration(
            color: color ,borderRadius: BorderRadius.circular(30),),
        ),
      ),
    );
  }
}
