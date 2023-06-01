import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:praktikum/Screens/Login/login_screen.dart';
import '../../../components/rounded_button.dart';
import '../../../constansts.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EtoV",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              "assets/images/evoting.png",
              height: size.height * 0.45,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
