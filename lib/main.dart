import 'package:flutter/material.dart';
import 'package:philomath/MathsList/MathsLO1.dart';
import 'package:philomath/MathsList/MathsLO10.dart';
import 'package:philomath/MathsList/MathsLO11.dart';
import 'package:philomath/MathsList/MathsLO2&3.dart';
import 'package:philomath/MathsList/MathsLO4.dart';
import 'package:philomath/MathsList/MathsLO5&6.dart';
import 'package:philomath/MathsList/MathsLO7.dart';
import 'package:philomath/MathsList/MathsLO8.dart';
import 'package:philomath/MathsList/MathsLO9.dart';
import 'package:philomath/Screens/HomeScreen.dart';
import 'package:philomath/Screens/Maths.dart';
import 'package:philomath/Screens/Mech.dart';
import 'package:philomath/Screens/Statistics.dart';
import 'package:philomath/Screens/splash.dart';
import 'UserId/Id.dart';
import 'UserId/settings.dart';
import 'Utils/Themes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Philomath",
      theme: myThemeData,
      home: Splash(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/Setting': (context) => Setting(),
        '/ID': (context) => ID(),
        '/maths': (context) => Maths(),
        '/mech': (context) => Mechanics(),
        '/Statistics': (context) => Statistics(),
        '/MathsLO1': (context) => MathsLO1(),
        '/MathsLO2': (context) => MathsLO2and3(),
        '/MathsLO4': (context) => MathsLO4(),
        '/MathsLO5': (context) => MathsLO5and6(),
        '/MathsLO7': (context) => MathsLO7(),
        '/MathsLO8': (context) => MathsLO8(),
        '/MathsLO9': (context) => MathsLO9(),
        '/MathsLO10': (context) => MathsLO10(),
        '/MathsLO11': (context) => MathsLO11(),
      },
    );
  }
}
