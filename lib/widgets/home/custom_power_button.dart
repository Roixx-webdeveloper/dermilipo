import 'package:flutter/material.dart';

class CustomPowerButton extends StatelessWidget {
  const CustomPowerButton({Key? key, required this.buttonText})
      : super(key: key);

  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: Text(
        '$buttonText',
        style: TextStyle(color: Colors.white),
      )),
    );
  }
}
