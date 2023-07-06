import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/core/widgets/custom_toggle_switch_bar.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_customs/custom_categories_vertical_list.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight(context),
      width: deviceWidth(context),
      decoration: const BoxDecoration(
        gradient: ColorsClass.gredient1,
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundColor: ColorsClass.lightBrown,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 25.0,
                        color: ColorsClass.brownColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Text("Categories", style: TextStyles.mainText),
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            const CustomToggleSwitchBar(
              item_1: "assets/images/cake_1.png",
              item_2: "assets/images/cake_2.png",
              item_3: "assets/images/cake_3.png",
              item_4: "assets/images/cake_4.png",
              item_5: "assets/images/cake_5.png",
              isBottomBarIcons: false,
            ),
            const SizedBox(
              height: 15.0,
            ),
             Expanded(
              child: CustomCategoriesVerticalList(),
            ),
          ],
        ),
      ),
    );
  }
}
