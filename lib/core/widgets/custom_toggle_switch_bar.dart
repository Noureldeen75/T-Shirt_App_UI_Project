import 'package:flutter/material.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/widgets/custom_toggle_switch_button.dart';
import 'package:pastry_app/core/widgets/custom_toggle_switch_icons.dart';

class CustomToggleSwitchBar extends StatelessWidget {
  const CustomToggleSwitchBar({
    super.key,
    required this.item_1,
    required this.item_2,
    required this.item_3,
    required this.item_4,
    required this.item_5,
    required this.isBottomBarIcons,
  });

  final String item_1;
  final String item_2;
  final String item_3;
  final String item_4;
  final String item_5;
  final bool isBottomBarIcons;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38.0,
      child: Stack(
        children: [
          Positioned.fill(
              top: 0.0,
              child: CustomCategoriesSwitchIcons(
                item_1: item_1,
                item_2: item_2,
                item_3: item_3,
                item_4: item_4,
                item_5: item_5,
                isBottomBarIcons: isBottomBarIcons,
              )),
          Positioned.fill(
            top: 0.0,
            child: Align(
                alignment: Alignment.center,
                child: CustomCategoriesSwitchButton(
                  isBottomBarIcons: isBottomBarIcons,
                  initialLabelIndex: isBottomBarIcons
                      ? PastryCubit.get(context)
                          .currentSelectedBottomBarSwitchIndex
                      : PastryCubit.get(context)
                          .currentSelectedCategoriesSwitchIndex,
                )),
          ),
        ],
      ),
    );
  }
}
