import 'package:dermilipo_app/providers/routine_provider.dart';
import 'package:dermilipo_app/src/screens/screens.dart';
import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => RoutineProvider())],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/login',
      routes: {
        '/login': (_) => LoginScreen(),
        '/profile': (_) => ProfileScreen(),
        '/forgot-password': (_) => ForgotPasswordScreen(),
        '/home': (_) => HomeScreen(),
        '/routine': (_) => RoutineScren(),
        '/options': (_) => OptionsScreen()
      },
      theme: AppTheme.lightTheme,
    );
  }
}
