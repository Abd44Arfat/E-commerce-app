import 'package:flutter/material.dart';
import 'feature/splash/presentation/splash_view.dart';

void main() {
  runApp(Fluttermarket());
}

class Fluttermarket extends StatelessWidget {
  const Fluttermarket({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashview(),
    );
  }
}
