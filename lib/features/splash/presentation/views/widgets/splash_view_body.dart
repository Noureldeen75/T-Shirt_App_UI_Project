import 'package:flutter/material.dart';
import 'package:pastry_app/features/splash/presentation/views/widgets/splash_view_body_background.dart';
import 'package:pastry_app/features/splash/presentation/views/widgets/splash_view_body_text.dart';
import 'package:pastry_app/features/splash/presentation/views/widgets/splash_view_body_logo_rotation.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned.fill(child: SplashViewBodyBackground()),
        Positioned.fill(
            child: Align(
                alignment: Alignment.center,
                child: SplashViewBodyLogoRotation())),
        Positioned.fill(child: SplashViewBodyText()),
      ],
    );
  }
}



// FOR loading..........
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// class SplashViewBody extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [Colors.blue, Colors.purple],
//         ),
//       ),
//       child: Center(
//         child: SpinKitChasingDots(
//           color: Colors.white,
//           size: 50.0,
//         ),
//       ),
//     );
//   }
// }

// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:pastry_app/features/Home/presentation/views/home_view.dart';
// import 'package:tbib_splash_screen/splash_screen_view.dart';

// class SplashViewBody extends StatelessWidget {
//   const SplashViewBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // return AnimatedSplashScreen(
//     //   splash: Text(
//     //     'My App',
//     //     style: TextStyle(
//     //       fontWeight: FontWeight.bold,
//     //       fontSize: 20.0,
//     //     ),
//     //   ),
//     //   nextScreen: HomeView(),
//     //   splashTransition: SplashTransition.fadeTransition,
//     //   duration: 3000,
//     // );

//     // return SplashScreenView(
//     //   navigateWhere: true,
//     //   navigateRoute: const HomeView(),
//     //   text: WavyAnimatedText(
//     //     "name",
//     //     textStyle: const TextStyle(
//     //       color: Colors.red,
//     //       fontSize: 32.0,
//     //       fontWeight: FontWeight.bold,
//     //     ),
//     //   ),
//     //   imageSrc: "assets/images/test.png",
//     // );
//   }
// }
