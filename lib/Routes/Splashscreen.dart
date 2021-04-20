import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Constants/ColorPalette.dart';
import 'package:login/Routes/Login.dart';

class Splashscreen extends StatefulWidget {
  static const routeName = '/';
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () => Get.toNamed(Login.routeName));
  }

  @override
  Widget build(BuildContext context) {
    var _screenHeight = MediaQuery.of(context).size.height;
    var _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorPalette.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: _screenHeight,
            width: _screenWidth,
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'FLUTTER\n',
                      style: GoogleFonts.josefinSans(
                        color: ColorPalette.orange,
                        fontSize: 25.0,
                      ),
                    ),
                    TextSpan(
                      text: 'PRACTICE UI',
                      style: GoogleFonts.josefinSans(
                        color: ColorPalette.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
