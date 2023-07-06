import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/Chat/presentation/views/chat_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: const Icon(
                Icons.reorder_rounded,
                size: 35.0,
              )),
          const SizedBox(
            width: 15.0,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChatView(),
                  ));
            },
            child: CircleAvatar(
              backgroundColor: ColorsClass.lightBrown,
              child: Image.asset(
                "assets/images/messenger.png",
                height: 25.0,
              ),
            ),
          ),
          const SizedBox(
            width: 15.0,
          ),
          InkWell(
            onTap: () {
              PastryCubit.get(context).changeNotificationButtonState();
            },
            child: CircleAvatar(
                backgroundColor: ColorsClass.lightBrown,
                child: Icon(
                  (PastryCubit.get(context).isNotificationOn)
                      ? Icons.notifications_active
                      : Icons.notifications_none,
                  color: (PastryCubit.get(context).isNotificationOn)
                      ? const Color.fromARGB(255, 13, 105, 16)
                      : Colors.black,
                  size: 30.0,
                )),
          ),
          const Spacer(),
          Container(
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: ColorsClass.lightBrown,
              borderRadius: BorderRadius.circular(30.0)
            ),
            child: Image.asset(
              "assets/images/logo.png",
              height: 30.0,
            ),
          )
        ],
      ),
    );
  }
}
