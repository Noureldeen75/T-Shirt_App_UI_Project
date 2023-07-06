import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/features/Home/presentation/view_model/offer_model.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/description_customs/ProductDescriptionView.dart';
import 'package:pastry_app/features/Home/presentation/views/widgets/offer_customs/custom_offer_item_bottom_details.dart';

class CustomOfferItem extends StatelessWidget {
  const CustomOfferItem({Key? key, required this.offerModel}) : super(key: key);

  final OfferModel offerModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDescriptionView(
                  image: offerModel.image,
                  isNotOffered: false,
                ),
              ));
        },
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: ColorsClass.lightBrown.withOpacity(0.2),
                spreadRadius: 8,
                blurRadius: 7,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  offerModel.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: double.infinity,
                ),
              ),
              Positioned(
                  top: 5.0,
                  left: 5.0,
                  child: CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.black54,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[700],
                    ),
                  )),
              Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: CustomOfferItemBottomDetails(offerModel: offerModel)),
            ],
          ),
        ),
      ),
    );
  }
}
