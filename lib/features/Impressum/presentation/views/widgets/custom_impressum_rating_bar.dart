import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomImpressumRatingBar extends StatelessWidget {
  const CustomImpressumRatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: 20.0,
      unratedColor: const Color.fromARGB(255, 77, 58, 1),
      initialRating: Random().nextDouble() * 5.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star_outlined,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
