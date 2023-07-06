import 'package:flutter/material.dart';
import 'package:pastry_app/features/Account/presentation/views/widgets/account_view_item_info.dart';
import 'package:pastry_app/features/Account/presentation/views/widgets/account_view_persentage.dart';

class AccountViewBody extends StatelessWidget {
  const AccountViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Icon(
                Icons.cancel,
                size: 35.0,
              ),
            ),
          ),
          const Spacer(
            flex: 2,
          ),
          Image.asset(
            "assets/images/person.png",
            height: 120.0,
          ),
          const Spacer(),
          const AccountViewItemInfo(
            title: "Name:",
            subTitle: "Nour-eldeen Osama",
          ),
          const Spacer(),
          const AccountViewItemInfo(
            title: "Number:",
            subTitle: "+201281339795",
          ),
          const Spacer(),
          const AccountViewItemInfo(
            title: "City:",
            subTitle: "Alexandria",
          ),
          const Spacer(
            flex: 2,
          ),
          Stack(
            alignment: AlignmentDirectional.centerEnd,
            children: [
              const AccountViewPersentage(),
              Image.asset(
                "assets/images/offer.png",
                height: 50.0,
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
