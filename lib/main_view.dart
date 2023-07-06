import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/Functions.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';
import 'package:pastry_app/core/widgets/custom_drawer.dart';
import 'package:pastry_app/main_view_body.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<PastryCubit, PastryStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return  MainViewBody();
          },
        ),
        floatingActionButton: CircleAvatar(
          radius: 38.0,
          backgroundColor: ColorsClass.lightBlue,
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: FloatingActionButton(
              heroTag: "Main",
              onPressed: () async {
                await showDialogMessage(context: context);
              },
              backgroundColor: ColorsClass.brownColor,
              child: const Icon(
                Icons.menu_book,
                color: ColorsClass.lightGrey,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: const CustomDrawer());
  }
}
