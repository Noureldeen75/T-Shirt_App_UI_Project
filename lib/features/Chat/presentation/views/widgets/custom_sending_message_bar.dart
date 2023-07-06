import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomSendingMessageBar extends StatelessWidget {
  const CustomSendingMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 10.0, vertical: 15.0),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 20.0,
            backgroundColor: Color.fromARGB(255, 171, 131, 117),
            child: Icon(
              Icons.person,
              size: 25.0,
              color: ColorsClass.messageDarkBlue,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: SizedBox(
              height: 40.0,
              child: TextFormField(
                onFieldSubmitted: (value) {},
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    fillColor: Color.fromARGB(255, 171, 131, 117),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: ColorsClass.messageDarkBlue,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
