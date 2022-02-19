import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:dermilipo_app/widgets/custom_appbar.dart';
import 'package:dermilipo_app/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
       
          body: Column(
            children: [_ProfileTop(size: size), 
            _ProfileBottom(size: size)],
          ),
        
        bottomNavigationBar: const CustomBottomNav(),
      ),
    );
  }
}

class _ProfileBottom extends StatelessWidget {
  const _ProfileBottom({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Información del paciente'),
          Text('Angela Hernandez'),
          Text('Edad 35'),
        ],
      ),
    );
  }
}

class _ProfileTop extends StatelessWidget {
  const _ProfileTop({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(40.0)),
        color: AppTheme.primaryColor
      ),
      height: size.height * 0.30,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const _WelcomeText(),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _QuickRoutine extends StatelessWidget {
  const _QuickRoutine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      height: size.height * 0.20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: size.height * 0.01,
          ),
          const Text(
            'Resúmen de la semana',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
              height: size.height * 0.10,
              child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int day) {
                    return _RoundedDay(dayNumber: day.toString());
                  }))
        ],
      ),
    );
  }
}

class _RoundedDay extends StatelessWidget {
  const _RoundedDay({
    Key? key,
    required this.dayNumber,
  }) : super(key: key);

  final String dayNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.0),
      child: Column(
        children: [
          Text(
            'M0',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.center,
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: AppTheme.greenColor,
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '18',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WelcomeText extends StatelessWidget {
  const _WelcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Welcome,',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Row(
          children: const [
            SizedBox(
              width: 10,
            ),
            Text(
              'Angela!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}

class _ProfileData extends StatelessWidget {
  const _ProfileData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
          const SizedBox(
            width: 300,
          ),
          Container(
            width: 30,
            height: 30,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
