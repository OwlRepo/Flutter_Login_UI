import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Constants/ColorPalette.dart';
import 'package:login/Widgets/CreateAccount/HeaderBackButton.dart';

class CreateAccount extends StatefulWidget {
  static const routeName = '/createaccount';
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPalette.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HeaderBackButton(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Create Account\n\n',
                        style: GoogleFonts.raleway(
                          color: ColorPalette.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0,
                        ),
                      ),
                      TextSpan(
                        text:
                            'Fill out the form below to continue exploring\namazing foods near you.',
                        style: GoogleFonts.raleway(
                          color: ColorPalette.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: ColorPalette.orange,
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
                    labelText: 'Fullname',
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  cursorColor: ColorPalette.orange,
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
                      Icons.email_rounded,
                      color: ColorPalette.white,
                    ),
                    labelText: 'Email',
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.01,
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
                child: TextFormField(
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
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03,
                  horizontal: MediaQuery.of(context).size.width * 0.08,
                ),
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
              Divider(
                color: Colors.transparent,
              ),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By creating an account, you agree to our\n',
                        style: GoogleFonts.raleway(
                          color: ColorPalette.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Terms & Conditions',
                        style: GoogleFonts.raleway(
                          color: ColorPalette.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: ' and agree to ',
                        style: GoogleFonts.raleway(
                          color: ColorPalette.white,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: GoogleFonts.raleway(
                          color: ColorPalette.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              Divider(
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
