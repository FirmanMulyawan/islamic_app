import 'package:flutter/material.dart';

import '../../component/config/app_style.dart';
import 'splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = SplashController();

  @override
  void initState() {
    super.initState();
    controller.refreshUserLoggedIn();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              width: 130,
              height: 75,
            ),
          ),
        ),
        Align(
          alignment: const Alignment(0.0, 0.30),
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            width: 300,
            height: 20,
            child: const ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(99)),
              child: LinearProgressIndicator(
                value: 0.5,
                valueColor: AlwaysStoppedAnimation<Color>(AppStyle.primary),
                backgroundColor: AppStyle.grey,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
