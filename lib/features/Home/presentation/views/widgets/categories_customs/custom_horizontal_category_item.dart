import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/features/Home/presentation/view_model/product_model.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_customs/custom_horizontal_category_item_bottom_details.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/ProductDescriptionView.dart';

class CustomHorizontalCategoryItem extends StatelessWidget {
  const CustomHorizontalCategoryItem({
    super.key,
    required this.index,
    required this.productModel,
  });

  final int index;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDescriptionView(
                image: productModel.image,
                isNotOffered: true,
              ),
            ));
      },
      child: AspectRatio(
        aspectRatio: 1.43 / 2,
        child: Container(
          //  height: deviceHeight(context) * 0.35,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: ColorsClass.gredient2,
            borderRadius: BorderRadius.circular(10.0),
            //    boxShadow: [
            //   BoxShadow(
            //     color: ColorsClass.lightBrown.withOpacity(0.3),
            //     spreadRadius: 8,
            //     blurRadius: 7,
            //     offset: const Offset(0, 0),
            //   ),
            // ],
          ),

          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  productModel.image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  top: 5.0,
                  left: 5.0,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.black54,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[700],
                    ),
                  )),
              Positioned(
                  left: 0.0,
                  right: 0.0,
                  bottom: 0.0,
                  child: CustomHorizontalCategoryItemBottomDetails(
                      productModel: productModel)),
            ],
          ),
        ),
      ),
    );
  }
}
