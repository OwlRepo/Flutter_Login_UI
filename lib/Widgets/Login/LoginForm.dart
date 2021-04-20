import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Constants/ColorPalette.dart';

class LoginForm extends StatelessWidget {
  final double screenHeight, screenWidth;
  LoginForm({required this.screenHeight, required this.screenWidth});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.1,
      ),
      height: screenHeight * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Text(
            'WELCOME!',
            style: GoogleFonts.raleway(
              color: ColorPalette.white,
              fontSize: 36.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Please log in to continue...',
            style: GoogleFonts.raleway(
              color: ColorPalette.white,
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextFormField(
            textAlignVertical: TextAlignVertical.center,
            cursorColor: ColorPalette.orange,
            autofocus: true,
            textInputAction: TextInputAction.next,
            onTap: () {},
            style: GoogleFonts.raleway(
              color: ColorPalette.white,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: Icon(
                Icons.account_circle,
                color: ColorPalette.white,
              ),
              labelText: 'Account ID',
              labelStyle: GoogleFonts.raleway(
                color: ColorPalette.white,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.orange,
                ),
              ),
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.white,
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.transparent,
          ),
          TextFormField(
            textAlignVertical: TextAlignVertical.center,
            cursorColor: ColorPalette.orange,
            textInputAction: TextInputAction.done,
            obscureText: true,
            onFieldSubmitted: (_) {
              print('done');
            },
            style: GoogleFonts.raleway(
              color: ColorPalette.white,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              prefixIcon: Icon(
                Icons.lock,
                color: ColorPalette.white,
              ),
              labelText: 'Password',
              labelStyle: GoogleFonts.raleway(
                color: ColorPalette.white,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.orange,
                ),
              ),
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorPalette.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SizedBox(
              height: 50.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: ColorPalette.orange,
                ),
                onPressed: () {},
                child: Text('SUBMIT'),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
