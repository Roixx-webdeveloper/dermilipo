import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.icon, this.routeName}) : super(key: key);
  final IconData? icon;
  final String? routeName;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromRGBO(31, 38, 38, 1),
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
        Image(image: AssetImage('assets/mddermis2.png'), width: 80, height: 80,),

      ],),
      
      
    );
  }
}
