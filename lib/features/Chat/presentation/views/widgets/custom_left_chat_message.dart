import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomLeftChatMessage extends StatelessWidget {
  const CustomLeftChatMessage({super.key, required this.message});

  final String message;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: AlignmentDirectional.centerStart,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
          decoration: const BoxDecoration(
              color: ColorsClass.messageLightBlue,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(15.0),
                topEnd: Radius.circular(15.0),
                bottomEnd: Radius.circular(15.0),
              )),
          child: Text(
            message,
            style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ));
  }
}
