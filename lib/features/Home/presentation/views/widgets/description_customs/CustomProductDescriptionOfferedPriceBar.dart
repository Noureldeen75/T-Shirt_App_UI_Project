import 'package:flutter/material.dart';

class CustomProductDescriptionOfferedPriceBar extends StatelessWidget {
  const CustomProductDescriptionOfferedPriceBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          children: [
            const Text(
              "Real Price: 50\$",
              style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 2.0,
                      width: 150.0,
                      color: Colors.white,
                    ))),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(7.0),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 167, 161, 205),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            "Offered Price: 50\$",
            style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[800]),
          ),
        ),
      ],
    );
  }
}
