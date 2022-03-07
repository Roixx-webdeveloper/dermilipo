import 'package:dermilipo_app/providers/routine_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomTimers extends StatelessWidget {
  const CustomTimers({Key? key, required this.timerText, required  this.sliderValue, required this.onChanged, required this.min, required this.max, required this.divisions,required this.aden}) : super(key: key);

  final String timerText;
  final double sliderValue;
  final Function onChanged;
  final double min;
  final double max;
  final int divisions;
  final String aden;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final routineProvider = Provider.of<RoutineProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(child: Text('$timerText : ${sliderValue} $aden' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300, fontSize: 13),)),
        ),
        Slider(
          thumbColor: Colors.deepPurple,
          divisions: divisions,
          min: min,
          max: max,
          value: sliderValue, 
          
          onChanged: (value) =>
            onChanged()
          ,
        )
      ],
    );
  }
}
