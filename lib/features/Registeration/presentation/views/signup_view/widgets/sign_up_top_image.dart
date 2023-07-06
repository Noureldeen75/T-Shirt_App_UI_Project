import 'package:flutter/material.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/TextStyles.dart';

class SignUpScreenTopImage extends StatelessWidget {
  const SignUpScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/signup.png",
                height: deviceHeight(context) * 0.2,
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Text(
          "SIGNUP",
          style: TextStyles.mainText,
        ),
      ],
    );
  }
}
