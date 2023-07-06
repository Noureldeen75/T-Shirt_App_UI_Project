import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomProductDescriptionTitle extends StatelessWidget {
  const CustomProductDescriptionTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Product Name",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          CircleAvatar(
            radius: 20.0,
            backgroundColor: ColorsClass.lightBrown,
            child: Icon(
              Icons.favorite,
              color: ColorsClass.brownColor,
            ),
          ),
        ],
      ),
    );
  }
}
