import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:dermilipo_app/widgets/login/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [_titleInformation(), _ImageAndDescription()],
            ),
          ),
        ),
      ),
    );
  }
}

class _ImageAndDescription extends StatelessWidget {
  const _ImageAndDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30),
      width: double.infinity,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Center(
             child: SvgPicture.asset(
              'assets/svgs/forgot_password2.svg',
              height: 150,
              width: 100,
          ),
           ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                const Text('¿Olvidaste tu contraseña?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                const Text('No te preocupes, para recuperar la contraseña ingresa el correo asociado a tu cuenta', textAlign: TextAlign.center,style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,),),
                const CustomInput(prefixIcon: Icons.email, hintText: 'Correo eléctronico', isPassword: false, keyboardType: TextInputType.emailAddress),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0,),
                  child: SizedBox(
                     height: 40,
                      width: 300,
                    child: ElevatedButton(
                            style: AppTheme.loginButton,
                            onPressed: () {
                              
                            },
                            child: const Text(
                              'Recuperar',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _titleInformation extends StatelessWidget {
  const _titleInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          GestureDetector(
            onTap: ()=> Navigator.pop(context),
            child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: Colors.deepPurpleAccent,
                  size: 20,
                )),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child:  Text('Recuperar contraseña',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}
