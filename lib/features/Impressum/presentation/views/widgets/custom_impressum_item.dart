import 'package:flutter/material.dart';
import 'package:pastry_app/features/Impressum/presentation/views/widgets/custom_impressum_rating_info.dart';
import 'package:pastry_app/features/Impressum/presentation/views/widgets/custom_impressum_upper_bar_item.dart';

class CustomImpressumItem extends StatelessWidget {
  const CustomImpressumItem(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImpressumUpperBarItem(title: title, subTitle: subTitle),
          const SizedBox(
            height: 3.0,
          ),
          Row(
            children: const [
              SizedBox(
                width: 65.0,
              ),
              Expanded(child: CustomImpressumRatingInfo()),
            ],
          )
        ],
      ),
    );
  }
}
