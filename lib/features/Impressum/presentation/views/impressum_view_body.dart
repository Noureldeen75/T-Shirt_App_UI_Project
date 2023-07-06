import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/TextStyles.dart';
import 'package:pastry_app/features/Impressum/presentation/views/widgets/custom_impressum_item.dart';

class ImpressumViewBody extends StatelessWidget {
  const ImpressumViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            children: const [
              Icon(
                Icons.double_arrow_rounded,
                color: ColorsClass.brownColor,
                size: 30.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                "Impressum",
                style: TextStyles.mainText,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              CustomImpressumItem(
                  title: "Cairo",
                  subTitle:
                      "123 Main Street, Downtown Cairo - Offering a wide range of products and services in the heart of Cairo."),
              CustomImpressumItem(
                  title: "Alexandria",
                  subTitle:
                      "456 Coastal Road, Alexandria - Located on the coast with stunning views of the Mediterranean. Specializing in unique souvenirs and gifts."),
              CustomImpressumItem(
                  title: "Giza",
                  subTitle:
                      "789 Sphinx Avenue, Giza - Just steps away from the Great Sphinx and the Pyramids of Giza. Offering handmade crafts and artifacts."),
              CustomImpressumItem(
                  title: "Shubra El Kheima",
                  subTitle:
                      "101 Main Street, Shubra El Kheima - Located in the bustling downtown area. Offering a wide range of clothing and accessories."),
              CustomImpressumItem(
                  title: "Port Said",
                  subTitle:
                      "222 Port Road, Port Said - Located in the heart of Port Said near the Suez Canal. Specializing in nautical-themed gifts and decor."),
              CustomImpressumItem(
                  title: "Suez",
                  subTitle:
                      "333 Canal Street, Suez - Located on the banks of the Suez Canal with stunning views. Offering local crafts and souvenirs."),
              CustomImpressumItem(
                  title: "Luxor",
                  subTitle:
                      "444 Nile Street, Luxor - Located on the banks of the Nile River near the Luxor Temple. Specializing in handmade jewelry and accessories."),
              CustomImpressumItem(
                  title: "Mansoura",
                  subTitle:
                      "555 Main Street, Mansoura - Located in the heart of Mansoura near the main square. Offering a variety of clothing and accessories for the whole family."),
              CustomImpressumItem(
                  title: "El-Mahalla El-Kubra",
                  subTitle:
                      "666 Cotton Road, El-Mahalla El-Kubra - Located in the heart of the textile industry. Specializing in high-quality fabrics and sewing supplies."),
              CustomImpressumItem(
                  title: "Tanta",
                  subTitle:
                      "777 Main Street, Tanta - Located in the center of Tanta near the train station. Offering electronics and gadgets, as well as repair services for mobile phones and computers."),
            ],
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
      ],
    );
  }
}
