import 'package:flutter/material.dart';
import 'package:pastry_app/features/Home/presentation/view_model/offer_model.dart';

class CustomOfferItemBottomDetails extends StatelessWidget {
  const CustomOfferItemBottomDetails({
    super.key,
    required this.offerModel,
  });

  final OfferModel offerModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      color: Colors.black45,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Product Name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Text(
                    'Price: ${offerModel.price}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 2.0,
                            width: 45.0,
                            color: Colors.white,
                          )))
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.black87,
                  child: Text(
                    'Offered Price: ${offerModel.offeredPrice}',
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
