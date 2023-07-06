import 'package:flutter/material.dart';
import 'package:pastry_app/features/Chat/presentation/views/widgets/custom_chat_app_bar.dart';
import 'package:pastry_app/features/Chat/presentation/views/widgets/custom_chat_list_view.dart';
import 'package:pastry_app/features/Chat/presentation/views/widgets/custom_sending_message_bar.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Column(
        children: const [
          CustomChatAppBar(),
          Expanded(
            child: CustomChatListView(),
          ),
          CustomSendingMessageBar(),
        ],
      ),
    );
  }
}
