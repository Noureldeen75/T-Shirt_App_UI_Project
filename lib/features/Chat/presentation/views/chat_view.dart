import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/features/Chat/presentation/views/widgets/chat_view_body.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: deviceHeight(context),
        width: deviceWidth(context),
        decoration: const BoxDecoration(
          gradient: ColorsClass.gredient1,
        ),
        child: SafeArea(
          child: Column(
            children: const [
              Expanded(child: ChatViewBody()),
            ],
          ),
        ),
      ),
    );
  }
}
