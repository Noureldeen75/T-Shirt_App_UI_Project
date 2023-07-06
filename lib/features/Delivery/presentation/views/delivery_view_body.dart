import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/features/Delivery/presentation/views/widgets/custom_delivery_info_box.dart';
import 'package:pastry_app/features/Delivery/presentation/views/widgets/custom_delivery_number_bar.dart';

class DeliveryViewBody extends StatelessWidget {
  const DeliveryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Positioned.fill(
        //     child: Container(
        //       height: deviceHeight(context),
        //       width: double.infinity,
        //       child: Image.asset(
        //               "assets/images/back_map.png",
        //               fit: BoxFit.cover,
        //             ),
        //     )),
        // Column(
        //   children: [
        //     Image.asset(
        //       "assets/images/map.png",
        //       width: deviceWidth(context),
        //     ),
        //     Expanded(
        //       child: Container(
        //         decoration: const BoxDecoration(
        //           gradient: LinearGradient(
        //             begin: Alignment.topCenter,
        //             end: Alignment.bottomCenter,
        //             colors: [
        //               Color.fromARGB(255, 193, 228, 203),
        //               ColorsClass.lightBlue,
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
         Positioned(
            top: deviceHeight(context) * 0.2,
            // right: 0.0,
            left: 0.0,
            right: 0.0,
            child: Align(
                alignment: Alignment.topCenter,
                child: CustomDeliveryInfoBox())),
        CustomDeliveryNumberBar(),
      ],
    );
  }
}
