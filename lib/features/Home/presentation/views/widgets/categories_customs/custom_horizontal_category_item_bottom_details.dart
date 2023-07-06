import 'package:flutter/material.dart';
import 'package:pastry_app/features/Home/presentation/view_model/product_model.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_customs/custom_horizontal_category_Item_rating_bar.dart';

class CustomHorizontalCategoryItemBottomDetails extends StatelessWidget {
  const CustomHorizontalCategoryItemBottomDetails(
      {super.key, required this.productModel});

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Column(
        children: [
          const SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 3.0,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(7.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.black45),
                child: Text(
                  productModel.price,
                  style: TextStyle(
                    color: Colors.red[600],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 3.0,
              ),
            ],
          ),
          const SizedBox(
            height: 3.0,
          ),
          const CustomHorizontalCategoryItemRatingBar()
        ],
      ),
    );
  }
}
