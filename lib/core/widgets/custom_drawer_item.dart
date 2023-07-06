import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      "Home",
      "Favourites",
      "Delivery",
      "Impressum",
    ];
    List<IconData> icons = [
      Icons.home,
      Icons.favorite,
      Icons.motorcycle,
      Icons.pin,
    ];
    return BlocConsumer<PastryCubit, PastryStates>(
      listener: (context, state) {},
      builder: (context, state) => InkWell(
        onTap: () {
          PastryCubit.get(context).changeCurrentDrawerIndex(index);
          PastryCubit.get(context).currentSelectedBottomBarSwitchIndex = index;
        },
        child: Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: index == PastryCubit.get(context).currentDrawerIndex
                  ? ColorsClass.lightBrown
                  : Colors.transparent),
          child: Row(
            children: [
              const Spacer(),
              Icon(icons[index],
                  color: index == PastryCubit.get(context).currentDrawerIndex
                      ?  Color.fromARGB(255, 79, 51, 41)
                      : Colors.black),
              const Spacer(),
              Text(
                titles[index],
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: index == PastryCubit.get(context).currentDrawerIndex
                        ? Color.fromARGB(255, 79, 51, 41)
                        : Colors.black),
              ),
              const Spacer(
                flex: 13,
              )
            ],
          ),
        ),
      ),
    );
  }
}
