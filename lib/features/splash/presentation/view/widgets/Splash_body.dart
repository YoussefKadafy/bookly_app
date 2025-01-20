import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(AssetsHelper.logo),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: TextStyle(letterSpacing: 4, fontSize: 14),
        ),
      ],
    );
  }
}
