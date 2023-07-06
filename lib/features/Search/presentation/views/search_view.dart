import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/features/Search/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: deviceHeight(context),
        width: deviceWidth(context),
        decoration: const BoxDecoration(
          gradient: ColorsClass.gredient1,
        ),
        child: SafeArea(
            child: Column(
          children: const [Expanded(child: SearchViewBody())],
        )),
      ),
    );
  }
}
