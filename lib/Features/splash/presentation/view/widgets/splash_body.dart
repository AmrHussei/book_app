import 'package:bookly/Features/products/presentation/view/home_screen.dart';
import 'package:bookly/Features/products/presentation/view/product_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/assets_data.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingTextAnimation;

  @override
  void initState() {
    initSlidingTextAnimation();
    navToHomeScreen();
    super.initState();
  }

  void navToHomeScreen() {
    Future.delayed(const Duration(seconds: 2), (() {
      Get.to(const DetailScreen(), transition: Transition.zoom);
    }));
  }

  void initSlidingTextAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingTextAnimation =
        Tween<Offset>(begin: Offset(0, 4.h), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsData.logo,
          fit: BoxFit.cover,
        ),
        SlidingAnimation(slidingTextAnimation: slidingTextAnimation)
      ],
    );
  }
}

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
    Key? key,
    required this.slidingTextAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingTextAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingTextAnimation,
      builder: (context, _) => SlideTransition(
        position: slidingTextAnimation,
        child: Text(
          'free books for you',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15.sp),
        ),
      ),
    );
  }
}
