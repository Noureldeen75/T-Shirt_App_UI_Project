class OfferModel {
  final String name;
  final String image;
  final String price;
  final String offeredPrice;

  OfferModel({
    required this.name,
    required this.image,
    required this.price,
    required this.offeredPrice,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      name: json['name'],
      image: json['image'],
      price: json['price'],
      offeredPrice: json['offeredPrice'],
    );
  }
}
