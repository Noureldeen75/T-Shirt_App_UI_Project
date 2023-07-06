import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/widgets/custom_drawer_item.dart';
import 'package:pastry_app/core/widgets/custom_drawer_upper_info.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ColorsClass.lightBlue,
      width: deviceWidth(context) * 0.6,
      child: SafeArea(
        child: Column(
          children: [
            const CustomDrawerUpperInfo(),
            const SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => CustomDrawerItem(
                        index: index,
                      ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 10.0),
                  itemCount: 4),
            )
          ],
        ),
      ),
    );
  }
}
