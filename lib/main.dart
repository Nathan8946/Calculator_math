import 'package:calculator_math/pages/calculadora_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.orange,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 7,
        navigateAfterSeconds: new CalculatorPage(),
        title: new Text(
          'Calculadora',
          style: new TextStyle(
            fontWeight: FontWeight.bold, 
            fontSize: 60.0,
            ),
        ),
        backgroundColor: Colors.orangeAccent,
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.white);
  }
}


