import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/features/Account/presentation/views/widgets/account_view_body.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: deviceHeight(context),
        width: deviceWidth(context),
        decoration: const BoxDecoration(
          gradient: ColorsClass.gredient1,
        ),
        child: const SafeArea(child: AccountViewBody()),
      ),
    );
  }
}
