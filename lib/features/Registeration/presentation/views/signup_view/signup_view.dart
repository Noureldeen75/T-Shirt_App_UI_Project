import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Registeration/presentation/views/background.dart';
import 'package:pastry_app/features/Registeration/presentation/views/responsive.dart';
import 'package:pastry_app/features/Registeration/presentation/views/signup_view/widgets/sign_up_top_image.dart';
import 'package:pastry_app/features/Registeration/presentation/views/signup_view/widgets/signup_form.dart';
import 'package:pastry_app/main_view.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileSignupScreen(),
          desktop: Row(
            children: [
              const Expanded(
                child: SignUpScreenTopImage(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: SignUpForm(),
                    ),
                    SizedBox(height: 15.0 / 2),
                    // SocalSignUp()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 80.0,
        ),
        const SignUpScreenTopImage(),
        const SizedBox(
          height: 120.0,
        ),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: SignUpForm(),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(
          height: 75.0,
        ),
        Row(
          children: [
            const Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainView(),
                    ));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "skip",
                    style: TextStyles.mainText,
                  ),
                  Container(
                    height: 2.0,
                    width: 60.0,
                    color: ColorsClass.brownColor,
                  )
                ],
              ),
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
        // const SocalSignUp()
      ],
    );
  }
}
