import 'package:flutter/material.dart';

class CustomDeliveryNumberBar extends StatelessWidget {
  const CustomDeliveryNumberBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.brown[900],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.phone,
              color: Colors.red[500],
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              "1555",
              style: TextStyle(
                color: Colors.red[500],
                fontSize: 22.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
