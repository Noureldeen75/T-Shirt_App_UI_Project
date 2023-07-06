import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomImpressumUpperBarItem extends StatelessWidget {
  const CustomImpressumUpperBarItem(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: ExpansionTile(
              textColor: Colors.white70,
              iconColor: Colors.white70,
              collapsedBackgroundColor: Colors.black12,
              collapsedIconColor: Colors.black,
              collapsedTextColor: Colors.black,
              title: Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    size: 30.0,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              backgroundColor: Colors.black45,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    subTitle,
                    style: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 11.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ColorsClass.lightBrown,
          ),
          child: const Icon(
            Icons.my_location_rounded,
            size: 35.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
