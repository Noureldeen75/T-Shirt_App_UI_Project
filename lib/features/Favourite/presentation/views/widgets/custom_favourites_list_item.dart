import 'package:flutter/material.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/ProductDescriptionView.dart';

class CustomFavouritesListItem extends StatelessWidget {
  const CustomFavouritesListItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDescriptionView(
                image: PastryCubit.get(context)
                    .cate_1_productModelsList[index]
                    .image,
                isNotOffered: true,
              ),
            ));
      },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              PastryCubit.get(context).cate_1_productModelsList[index].image,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(2.0),
              width: double.infinity,
              color: Colors.black54,
              child: Icon(
                Icons.favorite,
                color: Colors.red[600],
              ),
            )
          ],
        ),
      ),
    );
  }
}
