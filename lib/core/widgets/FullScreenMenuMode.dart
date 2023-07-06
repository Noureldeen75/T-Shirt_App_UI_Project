import 'package:flutter/material.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';

class FullScreenMenuMode extends StatelessWidget {
  const FullScreenMenuMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          PastryCubit.get(context).currentMenuText,
          width: deviceWidth(context),
        ),
      ),
    ));
  }
}
