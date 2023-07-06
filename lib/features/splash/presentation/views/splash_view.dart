import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: deviceHeight(context),
      width: deviceHeight(context),
      decoration: const BoxDecoration(
        gradient: ColorsClass.gredient1,
      ),
      child: const SplashViewBody(),
    ));
  }
}
