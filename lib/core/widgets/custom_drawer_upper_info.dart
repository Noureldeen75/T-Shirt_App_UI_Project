import 'package:flutter/material.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Account/presentation/views/account_view.dart';

class CustomDrawerUpperInfo extends StatelessWidget {
  const CustomDrawerUpperInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: const Color.fromARGB(31, 94, 94, 94),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AccountView(),
              ));
        },
        child: Row(
          children: [
            const Spacer(),
            Image.asset(
              "assets/images/person.png",
              height: 60.0,
            ),
            const Spacer(),
            Text(
              "Nour",
              style: TextStyles.mainText.copyWith(color: Colors.black),
            ),
            const Spacer(
              flex: 6,
            ),
          ],
        ),
      ),
    );
  }
}
