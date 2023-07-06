import 'package:flutter/material.dart';

class CustomProductDescriptionAddCommentBar extends StatelessWidget {
  const CustomProductDescriptionAddCommentBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 15.0,
          backgroundColor: Color.fromARGB(255, 77, 58, 1),
          child: Icon(
            Icons.comment,
            size: 20.0,
            color: Colors.amber,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: SizedBox(
            height: 35.0,
            child: TextFormField(
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 15.0,
                  ),
                  fillColor: Colors.transparent,
                  suffixIcon: const Icon(
                    Icons.send,
                    color: Color.fromARGB(255, 77, 58, 1),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
          ),
        ),
        const SizedBox(
          width: 15.0,
        ),
      ],
    );
  }
}
