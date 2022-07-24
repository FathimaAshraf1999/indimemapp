import 'package:flutter/material.dart';
import 'package:indimeme_frontend/module/app/view/constants.dart';
import 'package:indimeme_frontend/module/home/view/home.dart';

import 'package:indimeme_frontend/module/app/view/widget/input_field.dart';
import 'package:indimeme_frontend/module/app/view/widget/button_with_icon.dart';
import 'package:indimeme_frontend/module/app/view/widget/simple_text_button.dart';
import 'package:email_validator/email_validator.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String _errorMessage = '';
  String _errorName = '';
  String _errorPassword = '';
  String _errorConfirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Sign Up',
          style: kTextStyle.copyWith(fontSize: 25),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InputField(
                obsecure: false,
                hint: 'Enter your name',
                onchange: (val) {
                  //name validation
                  if (val.isEmpty) {
                    setState(() {
                      _errorName = 'Name can not be empty';
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
                child:
                    Text(_errorName, style: const TextStyle(color: Colors.red)),
              ),
              InputField(
                  obsecure: false,
                  hint: 'Enter your email',
                  onchange: (val) {
                    //email validation
                    validateEmail(val);
                  }),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  _errorMessage,
                  style: const TextStyle(color: Colors.red),
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
                child: Text(
                  _errorPassword,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              InputField(
                obsecure: false,
                hint: 'Enter confirm password',
                onchange: (val) {
                  //confirm password validation
                  if (val.isEmpty) {
                    setState(() {
                      _errorConfirmPassword =
                          'Confirm password can not be empty';
                    });
                  } else {
                    setState(() {
                      _errorConfirmPassword = '';
                    });
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  _errorConfirmPassword,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
              ButtonWithIcon(
                text: 'Sign Up',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()));
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: SimpleTextButton(
                  text: 'i\'m already member',
                  textcolor: Colors.green,
                  onpress: () {
                    //go to login page
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //  email validation with email validator package
  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
