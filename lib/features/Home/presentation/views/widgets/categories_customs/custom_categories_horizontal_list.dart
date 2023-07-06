import 'package:flutter/material.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_customs/custom_horizontal_category_item.dart';

class CustomCategoriesHorizontalList extends StatelessWidget {
  const CustomCategoriesHorizontalList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: SizedBox(
        height: deviceHeight(context) * 0.3,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: PastryCubit.get(context)
              .productModelsList[
                  PastryCubit.get(context).currentSelectedCategoriesSwitchIndex]
              .length,
          itemBuilder: (context, index) {
            return CustomHorizontalCategoryItem(
              index: index,
              productModel: PastryCubit.get(context).productModelsList[
                  PastryCubit.get(context)
                      .currentSelectedCategoriesSwitchIndex][index],
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10.0,
            );
          },
        ),
      ),
    );
  }
}
