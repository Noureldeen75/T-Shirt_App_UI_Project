import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomChatAppBar extends StatelessWidget {
  const CustomChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const CircleAvatar(
              radius: 20.0,
              backgroundColor: ColorsClass.messageLightBlue,
              child: Icon(
                Icons.arrow_back_ios,
                size: 25.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Text(
            "Chat",
            style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.w900),
          ),
          const Spacer(),
          const Icon(
            Icons.chat_rounded,
            color: ColorsClass.messageDarkBlue,
            size: 30.0,
          ),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
    );
  }
}
