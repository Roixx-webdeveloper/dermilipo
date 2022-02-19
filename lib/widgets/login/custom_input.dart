import 'package:flutter/material.dart';
class CustomInput extends StatelessWidget {
  const CustomInput({ Key? key, required this.prefixIcon, required this.hintText, required this.isPassword, required this.keyboardType }) : super(key: key);
  
  final IconData prefixIcon;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
                      margin: const EdgeInsets.only(top: 30),
                      padding: const EdgeInsets.only(
                          right: 30, bottom: 5, left: 5, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              offset: const Offset(0, 5),
                              blurRadius: 5
                            )
                          ],
                          borderRadius: BorderRadius.circular(100)),
                      width: 300,
                      height: 50,
                      child: TextFormField(
                        autocorrect: false,
                        keyboardType: keyboardType,
                        obscureText: isPassword,
                        decoration:  InputDecoration(
                          prefixIcon:  Icon(prefixIcon, color: Colors.deepPurple ,),
                          focusedBorder: InputBorder.none,
                          
                          border: InputBorder.none,
                          hintText: hintText
                        ),

                      ),
    );
  }
}