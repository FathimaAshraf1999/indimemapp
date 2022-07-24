import 'package:flutter/material.dart';

class SuccessButton extends StatelessWidget {
  final title;
  final onTap;

  SuccessButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xFF2AAD60)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          child: Text(
            title,
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}

Future<bool> showConfirmation(BuildContext context) async {
  bool? result = await showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: Colors.black,
      title: const Text(
        'Proceed?',
        style: kTextStyle,
      ),
      content: const Text(
        'Are you sure want continue',
        style: kTextStyle,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: const Text(
            'Cancel',
            style: TextStyle(color: Color(0xFF2AAD60), fontFamily: "Open_Sans"),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: const Text('OK',
              style:
                  TextStyle(color: Color(0xFF2AAD60), fontFamily: "Open_Sans")),
        ),
      ],
    ),
  );
  return result ?? false;
}

const kTextStyle = TextStyle(color: Colors.white, fontFamily: "Open_Sans");
