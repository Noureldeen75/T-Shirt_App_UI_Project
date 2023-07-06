import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/categories_view_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<PastryCubit, PastryStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return  CategoriesViewBody();
        },
      ),
    );
  }
}
