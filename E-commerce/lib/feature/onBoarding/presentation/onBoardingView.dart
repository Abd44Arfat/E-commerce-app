import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/feature/onBoarding/presentation/widget/onBoardingbody.dart';

class onBoardinView extends StatelessWidget {
  const onBoardinView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBoardingViewbody(),
    );
  }
}