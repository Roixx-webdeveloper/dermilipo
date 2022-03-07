import 'package:dermilipo_app/widgets/custom_bottom_nav.dart';
import 'package:dermilipo_app/widgets/utils/custom_navbar.dart';
import 'package:flutter/material.dart';

class RoutineScren extends StatelessWidget {
  const RoutineScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          icon: Icons.house_rounded,
          routeName: '/home',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 24, top: 10),
            child: Text('Historial de rutinas:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
          ),
          _routineCard(day: 'Lunes', dayNumber: '12/01/22', sessionDur: '20 Minutos', zone: 'Cuello', photo: 'assets/cuello.png',),
          _routineCard(day: 'Miércoles', dayNumber: '14/01/22', sessionDur: '20 Minutos', zone: 'Muslo', photo: 'assets/muslo.png',),
          _routineCard(day: 'Viernes', dayNumber: '16/01/22', sessionDur: '20 Minutos', zone: 'Brazo', photo: 'assets/brazo.png',),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}

class _routineCard extends StatelessWidget {
  const _routineCard({
    Key? key,
    required this.day,
    required this.dayNumber,
    required this.sessionDur,
    required this.zone,required this.photo,
  }) : super(key: key);

  final String day;
  final String dayNumber;
  final String sessionDur;
  final String zone;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(photo), fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Día de rutina: $day',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(dayNumber),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text('Hora: 10:00 AM - 10:20 AM'),
                SizedBox(
                  height: 10,
                ),
                Text('Duración: $sessionDur'),
                SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    SizedBox(width: 90,),
                    Text('Zona tratada: '),
                    Text('$zone', style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
