import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/Routes/Login.dart';
import 'package:login/Routes/Splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login',
      initialRoute: Splashscreen.routeName,
      getPages: [
        GetPage(
          name: Splashscreen.routeName,
          page: () => Splashscreen(),
        ),
        GetPage(
          name: Login.routeName,
          page: () => Login(),
        ),
      ],
    );
  }
}
