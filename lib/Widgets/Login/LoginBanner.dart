import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Constants/ColorPalette.dart';

class LoginBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    var _screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: _screenHeight * 0.5,
      child: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'CREATE BETTER\n',
                style: GoogleFonts.raleway(
                  color: ColorPalette.white,
                  fontSize: 30.0,
                ),
              ),
              TextSpan(
                text: 'TOGETHER\n',
                style: GoogleFonts.raleway(
                  color: ColorPalette.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '\nJoin our community.',
                style: GoogleFonts.raleway(
                  color: ColorPalette.black,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
