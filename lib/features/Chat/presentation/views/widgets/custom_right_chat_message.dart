import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';

class CustomRightChatMessage extends StatelessWidget {
  const CustomRightChatMessage({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: SizedBox(
        width: deviceWidth(context) * 0.9,
        child: Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
            decoration: const BoxDecoration(
              color: ColorsClass.messageDarkBlue,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(15.0),
                topEnd: Radius.circular(15.0),
                bottomStart: Radius.circular(15.0),
              ),
            ),
            child: Text(
              message,
              style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
