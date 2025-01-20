import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/splash/presentation/view/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:widget_and_text_animator/widget_and_text_animator.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

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
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
}
