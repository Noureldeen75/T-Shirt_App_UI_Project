import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pastry_app/core/DeviceInfo.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/offer_customs/custom_offer_Item.dart';

class CustomOffersList extends StatelessWidget {
  const CustomOffersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: deviceHeight(context) * 0.24,
      child: CarouselSlider(
        items: PastryCubit.get(context)
            .offerModelsList
            .map((offerModel) => CustomOfferItem(offerModel: offerModel))
            .toList(),
        options: CarouselOptions(
          height: 200.0,
          initialPage: 0,
          viewportFraction: 0.8,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          autoPlayAnimationDuration: const Duration(seconds: 1),
          autoPlayCurve: Curves.fastOutSlowIn,
          scrollDirection: Axis.horizontal,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          onPageChanged: (index, reason) {},
        ),
      ),
    );
  }
}
