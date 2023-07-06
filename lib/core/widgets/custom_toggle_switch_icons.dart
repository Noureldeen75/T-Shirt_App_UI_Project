import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';

class CustomCategoriesSwitchIcons extends StatelessWidget {
  const CustomCategoriesSwitchIcons(
      {super.key,
      required this.item_1,
      required this.item_2,
      required this.item_3,
      required this.item_4,
      required this.item_5,
      required this.isBottomBarIcons});

  final String item_1;
  final String item_2;
  final String item_3;
  final String item_4;
  final String item_5;
  final bool isBottomBarIcons;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13.0),
      padding: const EdgeInsets.all(2.0),
      width: deviceWidth(context),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: ColorsClass.lightBrown,
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            item_1,
            height: isBottomBarIcons ? 25.0 : 35.0,
          ),
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            item_2,
            height: isBottomBarIcons ? 25.0 : 35.0,
          ),
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            item_3,
            height: isBottomBarIcons ? 25.0 : 35.0,
          ),
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            item_4,
            height: isBottomBarIcons ? 25.0 : 35.0,
          ),
          const Spacer(
            flex: 3,
          ),
          Image.asset(
            item_5,
            height: isBottomBarIcons ? 25.0 : 35.0,
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
