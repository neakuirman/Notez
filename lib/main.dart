import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/under_construction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Under Construction',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/under-construction': (context) => const UnderConstructionScreen(),
      },
    );
  }
}