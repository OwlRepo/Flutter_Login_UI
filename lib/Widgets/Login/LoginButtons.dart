import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Constants/ColorPalette.dart';
import 'package:login/Routes/CreateAccount.dart';
import 'package:login/Routes/Login.dart';

class LoginButtons extends StatelessWidget {
  final double? screenHeight, screenWidth;

  LoginButtons({this.screenHeight, this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight! * 0.5,
      decoration: BoxDecoration(
        color: ColorPalette.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth! * 0.15,
            ),
            child: OutlinedButton(
              onPressed: () {
                Login.openModal(
                  context: context,
                  isLoginForm: true,
                );
              },
              style: OutlinedButton.styleFrom(
                primary: ColorPalette.orange,
                side: BorderSide(
                  color: ColorPalette.orange,
                ),
              ),
              child: Text(
                'LOG IN',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth! * 0.20,
            ),
            child: Divider(
              color: Colors.grey,
              thickness: .15,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth! * 0.15,
            ),
            child: OutlinedButton(
              onPressed: () {
                Get.toNamed(CreateAccount.routeName);
              },
              style: OutlinedButton.styleFrom(
                primary: ColorPalette.orange,
                side: BorderSide(
                  color: ColorPalette.orange,
                ),
              ),
              child: Text(
                'CREATE ACCOUNT',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.transparent,
          ),
          Center(
            child: Text(
              'Log in with:',
              style: GoogleFonts.raleway(
                color: Colors.grey,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth! * 0.15,
              vertical: screenHeight! * 0.030,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SignInButton(
                  Buttons.Facebook,
                  onPressed: () {},
                  mini: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                SignInButton(
                  Buttons.Apple,
                  onPressed: () {},
                  mini: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
                SignInButton(
                  Buttons.GitHub,
                  onPressed: () {},
                  mini: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
