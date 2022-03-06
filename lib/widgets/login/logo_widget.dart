import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 250,
      decoration: const BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100))),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/svgs/login_white.svg',
            height: 150,
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Dermilipo',
            style: TextStyle(
                fontSize: 30,
                letterSpacing: 7.0,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ],
      ),
    ));
  }
}
