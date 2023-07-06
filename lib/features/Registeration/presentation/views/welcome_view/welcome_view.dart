import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Registeration/presentation/views/background.dart';
import 'package:pastry_app/features/Registeration/presentation/views/welcome_view/widgets/login_signup_btn.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: deviceHeight(context),
        width: deviceWidth(context),
        decoration: const BoxDecoration(
          gradient: ColorsClass.gredient1,
        ),
        child: Background(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Expanded(
                      flex: 8,
                      child: Align(
                        child: Container(
                          padding: EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: Colors.brown,
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Image.asset(
                            "assets/images/logo.png",
                            height: 80.0,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Welcome Back!",
                  style: TextStyles.mainText.copyWith(fontSize: 28.0),
                ),
                const SizedBox(height: 75.0 * 2),
                Row(
                  children: const [
                    Spacer(),
                    Expanded(
                      flex: 8,
                      child: LoginAndSignupBtn(),
                    ),
                    Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
