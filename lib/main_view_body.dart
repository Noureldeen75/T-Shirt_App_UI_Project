import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/widgets/custom_toggle_switch_bar.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    // offer description view components (DONE)
    // menu (DONE)
    // search bar (DONE)
    // switche buttons (DONE)
    // vertical categories list (when clicking see all) (DONE)
    // other views >> (Delivery_View (DONE)) >> (Impressum_View (DONE)) >> (Chat_View (DONE)) >> (Favourites_View (DONE))
    // Adding the rating and its random values for all external products

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
            Expanded(
                child: PastryCubit.get(context).viewsBodyList[
                    PastryCubit.get(context)
                        .currentSelectedBottomBarSwitchIndex]),
            const CustomToggleSwitchBar(
              item_1: "assets/images/home.png",
              item_2: "assets/images/favorite.png",
              item_3: "assets/images/favorite.png",
              item_4: "assets/images/delivery.png",
              item_5: "assets/images/location.png",
              isBottomBarIcons: true,
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
