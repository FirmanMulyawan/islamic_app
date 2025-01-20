import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../component/config/app_style.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  _safeAreaWidget(BuildContext context) {
    if (MediaQuery.of(context).viewPadding.top > 20.0) {
      return const SizedBox(height: 59);
    } else {
      return const SizedBox(height: 20);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.primary,
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/im_intro.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Column(
            children: [
              _safeAreaWidget(context),
              SvgPicture.asset(
                'assets/icons/ic_logo_white.svg',
              ),
              const SizedBox(height: 40),
              const Center(
                child: Text(
                  'Play and learn\nIslam easily',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 27, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
