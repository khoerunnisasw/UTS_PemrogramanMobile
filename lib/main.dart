import 'package:flutter/material.dart';
import 'screens/splash_screens.dart';
import 'screens/dashboard_screens.dart';
import 'screens/biodata_screens.dart';
import 'screens/contact_screens.dart';  
import 'screens/calculator_screens.dart';
import 'screens/weather_screens.dart';
import 'screens/news_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Mobile App',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}