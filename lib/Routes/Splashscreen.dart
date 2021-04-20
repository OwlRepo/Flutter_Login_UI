import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: _screenHeight,
            width: _screenWidth,
            color: Colors.red,
            child: Center(
              child: Text('Splash Screen'),
            ),
          ),
        ],
      ),
    );
  }
}
