import 'dart:math';
import 'package:flutter/material.dart';

class SplashViewBodyLogoRotation extends StatefulWidget {
  const SplashViewBodyLogoRotation({Key? key}) : super(key: key);

  @override
  _SplashViewBodyLogoRotationState createState() =>
      _SplashViewBodyLogoRotationState();
}

class _SplashViewBodyLogoRotationState extends State<SplashViewBodyLogoRotation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: pi / 5), weight: 1),
      TweenSequenceItem(tween: Tween(begin: pi / 5, end: -pi / 5), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -pi / 5, end: 0.0), weight: 1),
    ]).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.stop();
          // Navigator.of(context).pushReplacement(
          //   MaterialPageRoute(builder: (_) => const HomeView()),
          // );
        }
      });
    Future.delayed(const Duration(milliseconds: 3500), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: _animation.value,
        child: Image.asset(
          "assets/images/logo.png",
          height: 80.0,
        ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
