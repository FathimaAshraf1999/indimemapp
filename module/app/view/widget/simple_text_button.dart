import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  const SimpleTextButton(
      {Key? key,
      required this.text,
      required this.textcolor,
      required this.onpress})
      : super(key: key);
  final String text;
  final Color textcolor;
  final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Text(
        text,
        style: TextStyle(color: textcolor, fontSize: 18.0),
      ),
    );
  }
}
