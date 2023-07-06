import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class SplashViewBodyBackground extends StatefulWidget {
  const SplashViewBodyBackground({super.key});

  @override
  _SplashViewBodyBackgroundState createState() =>
      _SplashViewBodyBackgroundState();
}

class _SplashViewBodyBackgroundState extends State<SplashViewBodyBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleAnimationController;
  late Animation<double> _scaleAnimation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Create the animation controller with a duration of 2 seconds
    _scaleAnimationController = AnimationController(
        duration: const Duration(milliseconds: 2200), vsync: this);

    // Create the animation with a curved effect
    double maxScreenSize = MediaQuery.of(context).size.width * 5;
    _scaleAnimation = Tween<double>(begin: 5, end: maxScreenSize)
        .chain(CurveTween(curve: Curves.easeInOut))
        .animate(_scaleAnimationController);

    // Start the animation
    _scaleAnimationController.forward();
  }

  @override
  void dispose() {
    _scaleAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Transform.scale(
                scale: _scaleAnimation.value / 50,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    gradient: ColorsClass.gredient1,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Transform.scale(
                scale: _scaleAnimation.value / 50,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    gradient: ColorsClass.gredient1,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
