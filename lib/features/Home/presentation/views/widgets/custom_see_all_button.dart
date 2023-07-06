import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Home/presentation/views/categories_view.dart';

class CustomSeeAllButton extends StatelessWidget {
  const CustomSeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CategoriesView(),
              ));
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          height: 25.0,
          width: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: ColorsClass.lightBrown,
          ),
          child: Center(
            child: Text(
              "See All.....",
              style: TextStyles.mainText.copyWith(fontSize: 17.0, color: Color.fromARGB(255, 83, 58, 49)),
            ),
          ),
        ),
      ),
    );
  }
}
