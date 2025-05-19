
import 'package:flutter/material.dart';
import 'package:project_flutter/welcome3/introscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SportiFy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFE16112),
        colorScheme: ColorScheme.light(primary: Color(0xFFE16112)),
      ),
      home: const OnboardingScreen(),
    );
  }
}
