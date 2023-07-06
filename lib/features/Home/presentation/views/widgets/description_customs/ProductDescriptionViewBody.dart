import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/CustomProductDescriptionBox.dart';

class ProductDescriptionViewBody extends StatelessWidget {
  const ProductDescriptionViewBody(
      {super.key, required this.image, required this.isNotOffered});

  final String image;
  final bool isNotOffered;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0.0,
        child: Image.asset(
          image,
          width: MediaQuery.of(context).size.width,
        ),
      ),
      Positioned(
          bottom: 0.0,
          child: CustomProductDescriptionBox(isNotOffered: isNotOffered)),
      Positioned(
        top: 45.0,
        left: 20.0,
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const CircleAvatar(
            radius: 20.0,
            backgroundColor: ColorsClass.lightBrown,
            child: Icon(
              Icons.arrow_back_ios,
              size: 25.0,
              color: ColorsClass.brownColor,
            ),
          ),
        ),
      )
    ]);
  }
}
