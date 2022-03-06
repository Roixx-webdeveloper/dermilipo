import 'package:dermilipo_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomRoutineButton extends StatelessWidget {
  const CustomRoutineButton({Key? key, required this.routineName}) : super(key: key);

  final String routineName;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: AppTheme.greenButton,
      onPressed: () {}, child: Text(routineName));
  }
}
