// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/onBoarding/presentation/onBoardingView.dart';
import 'package:get/get.dart';

class splashbody extends StatefulWidget {
  const splashbody({super.key});

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? fadingAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 900));

    fadingAnimation =
        Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose(); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
// ignore: prefer_const_literals_to_create_immutables
        children: [
          Spacer(),
          AnimatedBuilder(
            animation: fadingAnimation!,
            builder: (context, _) => Opacity(
              opacity: fadingAnimation?.value,
              child: Text(
                "  Fruit Market ",
                style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 60,
                  color: Color.fromARGB(255, 255, 248, 248),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Spacer(),
          Image.asset(
            'assets/images/1.png',
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}

void goToNextView() {
  Future.delayed(Duration(seconds: 1), () {
    Get.to(() => onBoardinView(), transition: Transition.fade);
  });
}
