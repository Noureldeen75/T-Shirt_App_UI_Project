import 'package:flutter/material.dart';
import 'package:pastry_app/features/Registeration/presentation/views/welcome_view/welcome_view.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';

class SplashViewBodyText extends StatelessWidget {
  const SplashViewBodyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: SplashScreenView(
        duration: const Duration(milliseconds: 3000),
        navigateWhere: true,
        navigateRoute: const WelcomeScreen(),
        text: WavyAnimatedText("  T - Shirt  ",
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.25,
              fontStyle: FontStyle.normal,
              fontFamily: 'Montserrat',
              decoration: TextDecoration.none,
              height: 1.3,
            ),
            speed: const Duration(milliseconds: 220)),
        paddingText: const EdgeInsets.all(0.0),
        imageSrc: "assets/images/empty.png",
        paddingLoading: const EdgeInsets.all(0.0),
      ),
    );
  }
}
