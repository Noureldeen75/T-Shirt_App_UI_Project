import 'package:flutter/material.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_customs/custom_vertical_category_item.dart';

class CustomCategoriesVerticalList extends StatelessWidget {
  const CustomCategoriesVerticalList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: PastryCubit.get(context)
              .productModelsList[
                  PastryCubit.get(context).currentSelectedCategoriesSwitchIndex]
              .length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.37 / 2,
            crossAxisSpacing: 10.0,
            //   mainAxisSpacing: 10.0,
          ),
          itemBuilder: (context, index) {
            return CustomVeticalCategoryItem(
              index: index,
              productModel: PastryCubit.get(context).productModelsList[
                  PastryCubit.get(context)
                      .currentSelectedCategoriesSwitchIndex][index],
            );
          }),
    );
  }
}
