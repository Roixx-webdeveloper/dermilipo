
import 'package:flutter/material.dart';


class HeaderCurvoPainter extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    
    final lapiz = new Paint();

    // Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill; // .fill .stroke
    lapiz.strokeWidth = 20;

    final path = new Path();

    // Dibujar con el path y el lapiz
    path.lineTo( 0, size.height * 0.80 );
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.60, size.width, size.height * 0.8 );
    path.lineTo( size.width, 0 );

    canvas.drawPath(path, lapiz );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}