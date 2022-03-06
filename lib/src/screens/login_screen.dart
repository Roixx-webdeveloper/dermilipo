import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:dermilipo_app/widgets/login/custom_input.dart';
import 'package:dermilipo_app/widgets/login/logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              const LoginHeader(),
              Form(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomInput(
                    prefixIcon: Icons.email_outlined,
                    hintText: 'Correo Electronico',
                    isPassword: false,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const CustomInput(
                    prefixIcon: Icons.lock,
                    hintText: 'Contraseña',
                    isPassword: true,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         GestureDetector(
                           onTap: () => Navigator.pushNamed(context, '/forgot-password'),
                           child: const Text(
                            'Recuperar contraseña',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                                color: Colors.blueAccent),
                                                 ),
                         ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 40,
                    width: 300,
                    child: ElevatedButton(
                        style: AppTheme.loginButton,
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: const Text(
                          'Iniciar Sesión',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Ó",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          color: Colors.black,
                        )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 40,
                      width: 300,
                      child: ElevatedButton.icon(
                          style: AppTheme.loginButtonGoogle,
                          onPressed: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          icon: Image(
                            image: AssetImage('assets/icons/google_logo.png'),
                          ),
                          label: const Text(
                            'Inicia sesión con Google',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  const[
                      FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                                  "Al inciar sesión usted reconoce que ha leído y \naceptado los términos y condiciones",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w300),
                                ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                          'Términos y Condiciones',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurpleAccent),
                        ),
                    ],
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
