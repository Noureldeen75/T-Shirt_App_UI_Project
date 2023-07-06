import 'package:flutter/material.dart';
import 'package:pastry_app/core/DeviceInfo.dart';

class AccountViewPersentage extends StatefulWidget {
  const AccountViewPersentage({super.key});

  @override
  _AccountViewPersentageState createState() => _AccountViewPersentageState();
}

class _AccountViewPersentageState extends State<AccountViewPersentage> {
  double _width = 0.0;

  @override
  void initState() {
    super.initState();
    // Start the animation when the widget is initialized
    Future.delayed(Duration.zero, () {
      setState(() {
        _width = deviceWidth(context) * 0.8;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color.fromARGB(255, 48, 48, 48)),
      child: Row(
        children: [
          const Text(
            "95%",
            style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Container(
                height: 28.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: AnimatedContainer(
                  duration: const Duration(seconds: 7),
                  width: _width,
                  height: 30.0,
                  color: Colors.red[600],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
