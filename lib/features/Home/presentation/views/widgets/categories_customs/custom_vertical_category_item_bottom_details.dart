import 'package:flutter/material.dart';
import 'package:pastry_app/features/Home/presentation/view_model/product_model.dart';

class CustomVerticalCategoryItemBottomDetails extends StatelessWidget {
  const CustomVerticalCategoryItemBottomDetails(
      {super.key, required this.productModel});

  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      color: Colors.black45,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Product Name",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            padding: const EdgeInsets.all(7.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.black45),
            child: Text(
              'Price: ${productModel.price}',
              style: TextStyle(
                color: Colors.red[600],
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
