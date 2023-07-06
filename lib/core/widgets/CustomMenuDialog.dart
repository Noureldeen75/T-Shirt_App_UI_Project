import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';
import 'package:pastry_app/core/widgets/FullScreenMenuMode.dart';

class CustomMenuDialog extends StatelessWidget {
  const CustomMenuDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PastryCubit, PastryStates>(
      listener: (context, state) {},
      builder: (context, state) {
        int currentMenuIndex = PastryCubit.get(context).currentMenuIndex;
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FullScreenMenuMode(),
                ));
          },
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 15.0),
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: ColorsClass.brownColor),
                child: Image.asset(
                  PastryCubit.get(context).currentMenuText,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              Positioned(
                bottom: 5.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  height: 60.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black54),
                  child: Row(
                    children: [
                      const Spacer(),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          PastryCubit.get(context)
                              .changeCurrentMenuText("back");
                        },
                        backgroundColor: ColorsClass.brownColor,
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${++currentMenuIndex}",
                            style: const TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            height: 2.0,
                            width: 30.0,
                            color: Colors.white,
                          )
                        ],
                      ),
                      const Spacer(),
                      FloatingActionButton(
                        mini: true,
                        onPressed: () {
                          PastryCubit.get(context)
                              .changeCurrentMenuText("forward");
                        },
                        backgroundColor: ColorsClass.brownColor,
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
