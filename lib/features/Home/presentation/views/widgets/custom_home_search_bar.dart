import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Search/presentation/views/search_view.dart';

class CustomHomeSearchBar extends StatelessWidget {
  const CustomHomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ));
        },
        child: Container(
          width: double.infinity,
          height: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
              color: ColorsClass.lightBrown,
              width: 2.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  "Search",
                  style: TextStyles.mainText.copyWith(fontSize: 20.0),
                ),
              ),
              Container(
                height: 40.0,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                      topEnd: Radius.circular(20.0),
                      bottomEnd: Radius.circular(20.0),
                    ),
                    color: ColorsClass.brownColor),
                child: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 197, 196, 196),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
