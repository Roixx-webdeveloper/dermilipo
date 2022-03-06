import 'dart:math';

import 'package:dermilipo_app/providers/routine_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomProgress extends StatelessWidget {
  const CustomProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 200,
        height: 200,
        child: RadialProgress(),
      ),
    );
  }
}

class RadialProgress extends StatelessWidget {
  const RadialProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routineProvider = Provider.of<RoutineProvider>(context);
    

    return Container(
      child: CustomPaint(
        painter: _MiRadialProgress((routineProvider.percentage)),
        child: Center(child: _buildText(routineProvider: routineProvider)),
      ),
    );
  }
}

class _buildText extends StatelessWidget {
  const _buildText({
    Key? key,
    required this.routineProvider,
  }) : super(key: key);

  final RoutineProvider routineProvider;

  @override
  Widget build(BuildContext context) {
    final routineDuration = routineProvider.routineDuration;
    String twoDigits(int n)=> n.toString().padLeft(2, '0');
    final minutes = twoDigits(routineDuration.inMinutes.remainder(60));
    final seconds = twoDigits(routineDuration.inSeconds.remainder(60));


    return Text('$minutes:$seconds', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),);
  }
}

class _MiRadialProgress extends CustomPainter {
  final porcentaje;

  _MiRadialProgress(this.porcentaje);

  @override
  void paint(Canvas canvas, Size size) {
    // Circulo completado
    final paint = new Paint()
      ..strokeWidth = 4
      ..color = Colors.grey
      ..style = PaintingStyle.stroke;
    final center = new Offset(size.width * 0.5, size.height / 2);
    final radio = min(size.width * 0.5, size.height * 0.5);

    canvas.drawCircle(center, radio, paint);

    // Arco
    final paintArco = new Paint()
      ..strokeWidth = 10
      ..color = Colors.deepPurple
      ..style = PaintingStyle.stroke;

    // Parte que se deberá ir llenando
    double arcAngle = 2 * pi * (porcentaje / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radio), -pi / 2,
        arcAngle, false, paintArco);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
