import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';
import 'package:pastry_app/core/widgets/custom_app_bar.dart';
import 'package:pastry_app/core/widgets/custom_toggle_switch_bar.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_customs/custom_categories_horizontal_list.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/custom_home_search_bar.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/custom_see_all_button.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/offer_customs/custom_offers_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PastryCubit, PastryStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:  [
            CustomAppBar(),
            const Spacer(),
            const CustomHomeSearchBar(),
            const Spacer(),
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 15.0),
              child: Text("Offers", style: TextStyles.mainText),
            ),
            CustomOffersList(),
            const Spacer(),
            const Padding(
              padding: EdgeInsetsDirectional.only(start: 15.0),
              child: Text("Categories", style: TextStyles.mainText),
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
            CustomCategoriesHorizontalList(),
            const CustomSeeAllButton(),
            const Spacer(),
          ],
        );
      },
    );
  }
}
