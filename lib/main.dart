import 'package:dermilipo_app/src/screens/screens.dart';
import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/login',
      routes: {
        '/login' : (_) => LoginScreen(),
        '/profile' : (_) => ProfileScreen(),
        '/forgot-password' : (_) => ForgotPasswordScreen(),
      },
      theme:AppTheme.lightTheme,
    );
  }
}