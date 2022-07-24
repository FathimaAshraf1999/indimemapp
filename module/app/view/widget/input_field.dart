import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/constants.dart';

class InputField extends StatelessWidget {
  InputField(
      {Key? key,
      this.hint,
      required this.obsecure,
      this.onchange,
      this.validator})
      : super(key: key);
  final String? hint;
  bool obsecure;
  dynamic validator;
  Function(String)? onchange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      child: TextFormField(
        style: const TextStyle(
          fontFamily: 'OpenSans',
        ),
        onChanged: onchange,
        onSaved: (String? value) {},
        validator: validator,
        obscureText: obsecure,
        decoration: kInputFieldDecoration.copyWith(
          hintText: hint,
          hintStyle: const TextStyle(fontFamily: 'OpenSans'),
        ),
      ),
    );
  }
}
