import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffF1F2F6),
                borderRadius: BorderRadius.circular(15)
              ),
              child: const Icon(FontAwesomeIcons.chevronLeft, color: Colors.black, size: 30,)),
            const Spacer(),
            const CircleAvatar(
              radius: 40,
              backgroundImage:  AssetImage('assets/person.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
