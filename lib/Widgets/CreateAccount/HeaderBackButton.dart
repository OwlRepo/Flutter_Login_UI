import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/Constants/ColorPalette.dart';

class HeaderBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
            ),
            color: ColorPalette.orange,
            onPressed: () {
              Get.back();
            },
          ),
          GestureDetector(
            onTap: () => Get.back(),
            child: Text(
              'Back',
              style: GoogleFonts.raleway(
                color: ColorPalette.orange,
                fontSize: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
