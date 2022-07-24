import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/constants.dart';

class EditField extends StatelessWidget {
  const EditField({Key? key, required this.label, required this.content})
      : super(key: key);
  final String label;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: kTextStyle,
          ),
          TextFormField(
            initialValue: content,
            style: kTextStyle,
          )
        ],
      ),
    );
  }
}
