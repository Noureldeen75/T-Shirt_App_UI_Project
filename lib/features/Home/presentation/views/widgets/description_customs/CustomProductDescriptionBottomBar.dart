import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomProductDescriptionBottomBar extends StatelessWidget {
  const CustomProductDescriptionBottomBar(
      {super.key, required this.isNotOffered});

  final bool isNotOffered;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: ColorsClass.brownColor,
                  borderRadius: BorderRadius.circular(20.0)),
              child: const Text(
                "Order Now",
                style: TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w600,
                    color: ColorsClass.lightGrey),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        if (isNotOffered == true)
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: ColorsClass.brownColor,
                borderRadius: BorderRadius.circular(20.0)),
            child: Row(
              children: const [
                Text(
                  "54.0",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w900,
                    color: ColorsClass.lightGrey,
                  ),
                ),
                Icon(
                  Icons.currency_pound_outlined,
                  color: ColorsClass.lightGrey,
                  size: 21.0,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
