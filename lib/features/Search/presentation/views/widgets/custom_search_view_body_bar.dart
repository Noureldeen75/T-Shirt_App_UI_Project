import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/TextStyles.dart';

class CustomSearchViewBodyBar extends StatelessWidget {
  const CustomSearchViewBodyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: deviceHeight(context) * 0.05,
        child: Stack(
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 15.0),
                //       filled: true,
                label: Text(
                  "Search",
                  style: TextStyles.mainText
                      .copyWith(fontSize: 20.0, color: Colors.black45),
                ),
                fillColor: const Color.fromARGB(255, 140, 174, 202),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            Positioned(
              height: deviceHeight(context) * 0.05,
              width: 40.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: ColorsClass.brownColor,
                ),
                child: const Icon(
                  Icons.search,
                  color: ColorsClass.lightBrown,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
