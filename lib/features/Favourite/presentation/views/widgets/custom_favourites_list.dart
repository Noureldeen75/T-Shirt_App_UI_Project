import 'package:flutter/material.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/Favourite/presentation/views/widgets/custom_favourites_list_item.dart';

class CustomFavouritesList extends StatelessWidget {
  const CustomFavouritesList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: PastryCubit.get(context).cate_1_productModelsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.8,
          crossAxisSpacing: 7.0,
          mainAxisSpacing: 7.0,
        ),
        itemBuilder: (context, index) =>
            CustomFavouritesListItem(index: index));
  }
}
