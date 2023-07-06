import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/TextStyles.dart';

class CustomDeliveryInfoBox extends StatelessWidget {
  const CustomDeliveryInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight(context) * 0.2,
      width: deviceWidth(context) * 0.65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), color: Colors.brown[900]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.red[900],
                  child: const Icon(
                    Icons.person,
                    size: 25.0,
                    color: ColorsClass.lightGrey,
                  ),
                ),
                const Spacer(),
                const Text(
                  'Ahmed',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 193, 228, 203)),
                ),
                const Spacer(
                  flex: 3,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      color: Colors.red[800],
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 7.0),
                      child: const Icon(
                        Icons.phone,
                        color: ColorsClass.lightGrey,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Estimated delivery time: 30 min',
                style: TextStyles.mainText.copyWith(
                    fontSize: 16.0,
                    color: const Color.fromARGB(255, 193, 228, 203)),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Order total: \$25.00',
                style: TextStyles.mainText.copyWith(
                    fontSize: 15.0,
                    color: const Color.fromARGB(255, 193, 228, 203)),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.red[900],
                borderRadius: BorderRadius.circular(20.0)),
            child: const Text(
              "Cancel",
              style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: ColorsClass.lightGrey),
            ),
          ),
        ],
      ),
    );
  }
}
