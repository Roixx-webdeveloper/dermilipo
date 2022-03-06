import 'dart:async';

import 'package:flutter/material.dart';

class RoutineProvider extends ChangeNotifier {
  double percentage = 0;
  double previousPercentage = 0.0;
  Duration routineDuration = Duration(seconds: 0);
  static const  maxSeconds = 180;
  
  double dosisValue = 7.0;
  double sessionTime = 5.0;

  Timer? timer;

  runTimer() {
    timer = Timer.periodic(Duration(seconds: 1 ), (_) => addTime());
  }

  void changeDosis(double value){
    dosisValue=value;
    notifyListeners();
  }

  void changeTime (double value){
    dosisValue=value;
    notifyListeners();
  }

  void addTime() {
    final seconds = routineDuration.inSeconds + 1;
    routineDuration = Duration(seconds: seconds);
    percentage = (  routineDuration.inSeconds / maxSeconds ) *100;
    notifyListeners();
  }
}
