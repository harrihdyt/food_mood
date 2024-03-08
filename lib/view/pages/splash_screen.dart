import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_ui/common/themes/theme.dart';
import 'package:food_ui/view/pages/onboarding/onboarding.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingPage(),
          ),
          (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOrangePeetColor,
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          width: 240,
          height: 115,
        ),
      ),
    );
  }
}
