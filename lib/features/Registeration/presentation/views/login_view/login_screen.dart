import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Registeration/presentation/views/background.dart';
import 'package:pastry_app/features/Registeration/presentation/views/login_view/widgets/login_form.dart';
import 'package:pastry_app/features/Registeration/presentation/views/login_view/widgets/login_view_top_image.dart';
import 'package:pastry_app/features/Registeration/presentation/views/responsive.dart';
import 'package:pastry_app/main_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileLoginScreen(),
          desktop: Row(
            children: [
              const LoginScreenTopImage(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 450,
                    child: LoginForm(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 50.0,
        ),
        const LoginScreenTopImage(),
        const SizedBox(
          height: 80.0,
        ),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(
          height: 80.0,
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
        //  SizedBox(
        //   height: 40.0,
        // ),
      ],
    );
  }
}
