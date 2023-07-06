import 'package:flutter/material.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomCategoriesSwitchButton extends StatelessWidget {
  const CustomCategoriesSwitchButton(
      {super.key,
      required this.isBottomBarIcons,
      required this.initialLabelIndex});

  final bool isBottomBarIcons;
  final int initialLabelIndex;
  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minHeight: 50.0,
      minWidth: deviceWidth(context) / 5,
      initialLabelIndex: initialLabelIndex,
      cornerRadius: 20.0,
      activeFgColor: Colors.transparent,
      inactiveBgColor: Colors.transparent,
      inactiveFgColor: Colors.transparent,
      totalSwitches: 5,
      borderWidth: 2.0,
      //   borderColor: [Color],
      activeBgColors: [
        [Colors.black.withOpacity(0.2)],
        [Colors.black.withOpacity(0.2)],
        [Colors.black.withOpacity(0.2)],
        [Colors.black.withOpacity(0.2)],
        [Colors.black.withOpacity(0.2)],
      ],
      onToggle: (index) {
        if (isBottomBarIcons) {
          PastryCubit.get(context).toggleBottomBarSwithcIndex(index!);
        } else {
          PastryCubit.get(context).toggleCategoriesSwithcIndex(index!);
        }
      },
    );
  }
}
