// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:praktikum/Screens/Login/components/background.dart';
import 'package:praktikum/components/rounded_Input_field.dart';
import 'package:praktikum/components/rounded_button.dart';
import 'package:praktikum/components/rounded_password_field.dart';
import 'package:praktikum/components/text_field_container.dart';
import 'package:praktikum/constansts.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/login.jpg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: "Email Address",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: "LOGIN", press: () {}),
            AlreadyHaveAnAccountCheck()
          ]),
    );
  }
}

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don't have an Account ? " : "Already have an Account ?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
