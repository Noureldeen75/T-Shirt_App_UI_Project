import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_states.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/ProductDescriptionViewBody.dart';

class ProductDescriptionView extends StatelessWidget {
  const ProductDescriptionView(
      {super.key, required this.image, required this.isNotOffered});

  final String image;
  final bool isNotOffered;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PastryCubit, PastryStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: ProductDescriptionViewBody(
            image: image,
            isNotOffered: isNotOffered,
          ),
        );
      },
    );
  }
}
