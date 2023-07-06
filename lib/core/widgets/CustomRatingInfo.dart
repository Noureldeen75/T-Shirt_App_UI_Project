import 'package:flutter/material.dart';
import 'package:pastry_app/core/widgets/CustomRatingBar.dart';

class CustomRatingInfo extends StatelessWidget {
  const CustomRatingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const CustomRatingBar(),
        Container(
          child: Row(
            children: const [
              Text(
                "12k",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 77, 58, 1)),
              ),
              SizedBox(
                width: 7.0,
              ),
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Color.fromARGB(255, 77, 58, 1),
                child: Icon(
                  Icons.person,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        ),
        Container(
          child: Row(
            children: const [
              Text(
                "532",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 77, 58, 1)),
              ),
              SizedBox(
                width: 7.0,
              ),
              CircleAvatar(
                radius: 15.0,
                backgroundColor: Color.fromARGB(255, 77, 58, 1),
                child: Icon(
                  Icons.comment,
                  size: 20.0,
                  color: Colors.amber,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
