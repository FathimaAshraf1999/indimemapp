import 'package:flutter/material.dart';

import 'package:indimeme_frontend/module/app/view/constants.dart';
import 'package:indimeme_frontend/module/home/view/home.dart';

import 'package:indimeme_frontend/module/app/view/widget/input_field.dart';
import 'package:indimeme_frontend/module/app/view/widget/button_with_icon.dart';
import 'package:indimeme_frontend/module/app/view/widget/simple_text_button.dart';
import 'package:indimeme_frontend/module/auth/signup_screen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);
  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  String _errorPassword = '';
  String _errorName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  Center(
          child: Text(
            'Log In',
            style: kTextStyle.copyWith(fontSize: 25),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InputField(
            obsecure: false,
            hint: 'Enter your user name',
            onchange: (val) {
              //user name validation
              if (val.isEmpty) {
                setState(() {
                  _errorName = 'User name can not be empty';
                });
              } else {
                setState(() {
                  _errorName = '';
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              _errorName,
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.start,
            ),
          ),
          InputField(
            obsecure: true,
            hint: 'Enter your password',
            onchange: (val) {
              // password validation
              if (val.isEmpty) {
                setState(() {
                  _errorPassword = 'Password can not be empty';
                });
              } else {
                setState(() {
                  _errorPassword = '';
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child:
                Text(_errorPassword, style: const TextStyle(color: Colors.red)),
          ),
          ButtonWithIcon(
              text: 'Log In',
              onPress: () {
                // go to edit page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage()));
              }),
          const SizedBox(
            height: 20.0,
          ),
          Center(
            child: SimpleTextButton(
              text: 'Don\'t have an account',
              textcolor: Colors.green,
              onpress: () {
                //go to signup page
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
