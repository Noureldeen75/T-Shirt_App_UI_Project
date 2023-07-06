import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pastry_app/features/Impressum/presentation/views/widgets/custom_impressum_rating_bar.dart';

class CustomImpressumRatingInfo extends StatelessWidget {
  const CustomImpressumRatingInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: Colors.black12),
        child: Center(
          child: Row(
            children: [
              const Spacer(flex: 2),
              const CustomImpressumRatingBar(),
              const Spacer(),
              Text(
                "${Random().nextInt(15)}k",
                style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 77, 58, 1)),
              ),
              const SizedBox(
                width: 7.0,
              ),
              const CircleAvatar(
                radius: 10.0,
                backgroundColor: Color.fromARGB(255, 77, 58, 1),
                child: Icon(
                  Icons.person,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ),
              const Spacer(
                flex: 4,
              ),
            ],
          ),
        ));
  }
}
