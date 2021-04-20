import 'package:flutter/material.dart';
import 'package:login/Constants/ColorPalette.dart';
import 'package:login/Widgets/Login/LoginBanner.dart';
import 'package:login/Widgets/Login/LoginButtons.dart';
import 'package:login/Widgets/Login/LoginForm.dart';

class Login extends StatefulWidget {
  static const routeName = '/login';
  static void openModal(
      {required BuildContext context, required bool isLoginForm}) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    showModalBottomSheet(
      context: context,
      backgroundColor: ColorPalette.black,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            20.0,
          ),
          topRight: Radius.circular(
            20.0,
          ),
        ),
      ),
      builder: (context) => isLoginForm
          ? LoginForm(
              screenHeight: _screenHeight,
              screenWidth: _screenWidth,
            )
          : LoginForm(
              screenHeight: _screenHeight,
              screenWidth: _screenWidth,
            ),
    );
  }

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    var _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorPalette.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LoginBanner(),
            LoginButtons(
              screenHeight: _screenHeight,
              screenWidth: _screenWidth,
            ),
          ],
        ),
      ),
    );
  }
}
