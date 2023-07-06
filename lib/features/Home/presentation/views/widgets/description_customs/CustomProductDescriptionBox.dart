import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/widgets/CustomRatingInfo.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/CustomProductDescriptionAddCommentBar.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/CustomProductDescriptionBottomBar.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/CustomProductDescriptionDaysList.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/CustomProductDescriptionOfferedPriceBar.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/CustomProductDescriptionTitle.dart';

class CustomProductDescriptionBox extends StatelessWidget {
  const CustomProductDescriptionBox({super.key, required this.isNotOffered});

  final bool isNotOffered;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: isNotOffered
          ? MediaQuery.of(context).size.height * 0.5
          : MediaQuery.of(context).size.height * 0.7,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: ColorsClass.gredient1,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: CustomProductDescriptionTitle(),
            ),
            const Spacer(),
            const CustomRatingInfo(),
            const Spacer(
              flex: 2,
            ),
            const Text(
              "Try our luxurious chocolate cream dish covered with fresh nuts, roasted hazelnuts, and Nutella. Perfect as a dessert or a snack, it boasts high-quality ingredients.",
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                //  fontFamily: Theme.of(context).platform == TargetPlatform.iOS ? 'Helvetica' : 'Roboto',
              ),
            ),
            if (isNotOffered == false) const Spacer(),
            if (isNotOffered == false) const CustomProductDescriptionDaysList(),
            if (isNotOffered == false) const Spacer(),
            if (isNotOffered == false)
              const CustomProductDescriptionOfferedPriceBar(),
            const Spacer(
              flex: 2,
            ),
            const CustomProductDescriptionAddCommentBar(),
            const Spacer(),
            CustomProductDescriptionBottomBar(
              isNotOffered: isNotOffered,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
