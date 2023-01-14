import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/feature/splash/presentation/widgets/splah_body.dart';

class splashview extends StatelessWidget {
  const splashview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 4, 130, 116),
// ignore: prefer_const_constructors
      body: splashbody(),
    );
  }
}
