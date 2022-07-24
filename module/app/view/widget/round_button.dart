import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  RoundButton({
    Key? key,
    required this.text,
    required this.onPress,
  }) : super(key: key);
  String text;

  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 70.0, right: 70.0, top: 70.0, bottom: 40),
      child: Material(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
