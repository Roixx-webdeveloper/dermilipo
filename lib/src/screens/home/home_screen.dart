import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:dermilipo_app/providers/routine_provider.dart';
import 'package:dermilipo_app/widgets/custom_bottom_nav.dart';
import 'package:dermilipo_app/widgets/custom_progress.dart';
import 'package:dermilipo_app/widgets/custom_timers.dart';
import 'package:dermilipo_app/widgets/home/custom_power_button.dart';
import 'package:dermilipo_app/widgets/utils/custom_navbar.dart';
import 'package:dermilipo_app/widgets/utils/custom_routine_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routineProvider = Provider.of<RoutineProvider>(context);
    final dosis = routineProvider.dosisValue;
    final sessionTime = routineProvider.sessionTime;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: CustomAppBar(
          icon: Icons.house_rounded,
          routeName: '/home',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/dermi-black.png"),
                fit: BoxFit.contain,
                width: 200,
                height: 120,
              ),
              CustomProgress(),
              Divider(),
              Row(
                children: [
                  CustomTimers(
                    timerText: 'Dosis:',
                    aden: '(j/cm2)',
                    sliderValue: dosis,
                    onChanged: () => routineProvider.changeDosis(dosis),
                    min: 7,
                    max: 9,
                    divisions: 10,
                  ),
                  CustomTimers(
                    timerText: 'Tiempo:',
                    aden: 'minutos',
                    sliderValue: sessionTime,
                    onChanged: () => routineProvider.changeTime(sessionTime),
                    min: 5,
                    max: 15,
                    divisions: 3,
                  ),
                ],
              ),
              Row(
                children: [_pads(), Spacer(), _quickPower()],
              ),
              SizedBox(height: 100,)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            routineProvider.runTimer();
          },
          child: Icon(Icons.play_arrow)),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}

class _quickPower extends StatelessWidget {
  const _quickPower({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: const[
              CustomPowerButton(buttonText: 'Low'),
              CustomPowerButton(buttonText: 'Med'),
              CustomPowerButton(buttonText: 'High'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Rutinas', style: TextStyle(fontWeight: FontWeight.bold),),
          Row(
            children: const[
              CustomRoutineButton(routineName: 'Cuello',),
              SizedBox(
                width: 10,
              ),
              CustomRoutineButton(routineName: 'Muslo',),
            ],
          ),
          Row(
            children: const[
              CustomRoutineButton(routineName: 'Brazo',),
              SizedBox(
                width: 10,
              ),
              CustomRoutineButton(routineName: 'Pecho',),
            ],
          ),
        ],
      ),
    );
  }
}

class _pads extends StatelessWidget {
  const _pads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            'Pad largo',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: _padSliders(),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: _padSliders(),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: _padSliders(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            'Pad pequeño',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 30,
          width: 150,
          child: _padSliders(),
        ),
      ],
    );
  }
}

class _padSliders extends StatelessWidget {
  const _padSliders({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: Slider(
            thumbColor: Colors.deepPurple,
            divisions: 2,
            min: 1,
            max: 2,
            value: 1,
            onChanged: (value) {},
          ),
        ),
        SizedBox(
          width: 70,
          child: Slider(
            thumbColor: Colors.deepPurple,
            divisions: 10,
            min: 1,
            max: 2,
            value: 1,
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}
