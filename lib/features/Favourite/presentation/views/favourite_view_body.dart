import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Favourite/presentation/views/widgets/custom_favourites_list.dart';

class FavouriteViewBody extends StatelessWidget {
  const FavouriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: const [
              Icon(
                Icons.double_arrow_rounded,
                color: ColorsClass.brownColor,
                size: 30.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Favourites",
                style: TextStyles.mainText,
              ),
            ],
          ),
        ),
        const Expanded(
          child: Padding(
              padding: EdgeInsets.all(15.0), child: CustomFavouritesList()),
        ),
      ],
    );
  }
}
