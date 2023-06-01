// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:praktikum/Screens/Login/components/background.dart';
import 'package:praktikum/Screens/Signup/signup_screen.dart';
import 'package:praktikum/components/already_have_an_account.dart';
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
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              'assets/images/login.jpg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "Email Address",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(text: "LOGIN", press: () {}),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ));
              },
            )
          ]),
    );
  }
}
