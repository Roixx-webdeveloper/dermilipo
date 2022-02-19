import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xff1D5FEC);
  static const secondaryColor = Color(0xff3D4073);
  static const whiteColor = Color(0xFFECE9E9);
  static const greenColor = Color(0xFF03745B);

  static final loginButton = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple.shade400),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.deepPurple.shade400))));

static final loginButtonGoogle = ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Colors.white))));

    static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: whiteColor,
  );




  static InputDecoration authInputDecoration(
      {required String hintText,
      required String labelText,
      required IconData prefixIcon}) {
    return InputDecoration(
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(10.0),
          ),
        ),
        hintText: hintText,
        labelText: labelText,
        hintStyle: TextStyle(color: primaryColor),
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(
          prefixIcon,
          color: Colors.black,
        ));
  }
}
