import 'package:flutter/material.dart';
import 'package:pastry_app/core/Data.dart';
import 'package:pastry_app/features/Chat/presentation/views/widgets/custom_left_chat_message.dart';
import 'package:pastry_app/features/Chat/presentation/views/widgets/custom_right_chat_message.dart';

class CustomChatListView extends StatelessWidget {
  const CustomChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    // int customerIndex = -1;
    // int shopIndex = -1;
    return ListView.separated(
      reverse: true,
      itemCount: Data.customerMessagesList.length,
      itemBuilder: (context, index) {
        if (index % 2 != 0) {
          // if (customerIndex < (Data.customerMessagesList.length - 1)) {
          //   customerIndex++;
          // }
          return CustomLeftChatMessage(
            message: Data.customerMessagesList[index],
          );
        } else {
          // if (shopIndex < (Data.shopMessagesList.length - 1)) {
          //   shopIndex++;
          // }
          return CustomRightChatMessage(
            message: Data.shopMessagesList[index],
          );
        }
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10.0,
        );
      },
    );
  }
}
