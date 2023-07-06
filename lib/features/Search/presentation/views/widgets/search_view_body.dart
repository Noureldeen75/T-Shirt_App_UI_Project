import 'package:flutter/material.dart';
import 'package:pastry_app/features/Search/presentation/views/widgets/custom_search_view_body_bar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 30.0,
        ),
        CustomSearchViewBodyBar(),
      ],
    );
  }
}
