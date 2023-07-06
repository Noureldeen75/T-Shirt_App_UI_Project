import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';

class CustomProductDescriptionDaysList extends StatelessWidget {
  const CustomProductDescriptionDaysList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> days = ["Sat", "Sun", "Mon", "Tue", "Wen", "Thu", "Fri"];
    return SizedBox(
      height: 75.0,
      child: ListView.builder(
          itemCount: 7,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            int indexValue = index;
            return Container(
              margin: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: (index == 3 || index == 0) ? Colors.red[600] : null,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 167, 161, 205),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      days[index],
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: (index == 3 || index == 0)
                            ? Colors.red[600]
                            : ColorsClass.brownColor,
                      ),
                    ),
                    Text(
                      "${indexValue += 5}",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: (index == 3 || index == 0)
                            ? Colors.red[600]
                            : ColorsClass.brownColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
