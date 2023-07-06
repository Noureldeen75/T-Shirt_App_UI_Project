import 'dart:math';

abstract class Data {
  static List<String> menuData = [
    'assets/images/menu_1.jpg',
    'assets/images/menu_2.jpg',
    'assets/images/menu_3.jpg',
    'assets/images/menu_4.jpg',
  ];

  static List<String> customerMessagesList = [
    "Hi, is avalible birthday cake?",
    "Pick up cupcakes Saturday?",
    "Loved the macarons!",
    "Dozen cupcakes, different flavors?",
    "Wedding cake options?",
    "Thank you for cake!",
    "Dozen gluten-free cookies?",
    "Cancel cake order.",
    "Perfect cupcakes!",
    "Chocolate caramel cake for husband's birthday?",
    "Macarons notice?",
    "Thank you for beautiful cake!",
    "Dairy-free options?",
    "Fruit tart price?",
    "Discount for large order?",
    "Guitar-shaped cake?",
    "Amazing dessert platter!",
    "Croissants for tomorrow?",
    "Cheesecake flavors?",
    "Custom cake message?",
    "Deliver to office?",
    "Sugar-free options?",
    // "Pastry basket order?",
    "Thanks for your service",
    "Thank you for cupcakes!",
    // "Great!",
    // "Great!",
  ].reversed.toList();

  static List<String> shopMessagesList = [
    "Yes, we can make a unicorn cake. When do you need it?",
    "No problem, pick up on Saturday.",
    "You're welcome! Let us know if you need anything else.",
    "Sure, what flavors would you like?",
    "Our wedding cake options start at \$150. Let's schedule a consultation.",
    "Glad you enjoyed the cake!",
    "Yes, our gluten-free cookies are \$2 each. When do you need them?",
    // "No worries, thanks for letting us know.",
    "Two weeks notice is ideal for macarons. What flavor would you like?.",
    "Happy to hear that!",
    "A chocolate caramel cake is \$60 for a 9-inch size. When do you need it?",
    "Two weeks notice is ideal for macarons. What flavor would you like?",
    "You're welcome, glad you liked it!",
    "Yes, we have dairy-free options. What are you interested in?",
    "Our fruit tarts are \$25 each. When do you need it?",
    "We offer discounts for orders over \$50. What are you interested in?",
    "Yes, we can make a guitar-shaped cake. What flavor would you like?",
    "You're welcome, glad you enjoyed it!",
    "Yes, what time do you need them and how many?",
    "We have a variety of flavors for our cheesecake. Which one would you like?",
    "Yes, we can write a custom message on the cake. What would you like it to say?",
    "You're welcome, glad you enjoyed them!",
    // "Yes, we offer delivery for an additional fee. Where would you like it delivered?",
    "Yes, Happy to hear that!",
    "We have some sugar-free options. What are you interested in?",
    "Our pastry baskets start at \$30.",
    //"You're welcome, glad you liked the cupcakes!"
    "You're welcome!"
  ].reversed.toList();

  static List<Map<String, dynamic>> offersData = [
    {
      'name': 'product-1',
      'image': 'assets/images/offer_1.jpg',
      'price': '50.0\$',
      'offeredPrice': '39.99\$'
    },
    {
      'name': 'product-2',
      'image': 'assets/images/offer_2.jpg',
      'price': '25.0\$',
      'offeredPrice': '19.99\$'
    },
    {
      'name': 'product-3',
      'image': 'assets/images/offer_3.jpg',
      'price': '99.0\$',
      'offeredPrice': '79.99\$'
    },
    {
      'name': 'product-4',
      'image': 'assets/images/offer_4.jpg',
      'price': '75.0\$',
      'offeredPrice': '59.99\$'
    },
  ];

  static List<Map<String, dynamic>> cate_1_List = [
    {
      'name': 'product-1',
      'image': 'assets/images/cate_1_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_1_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_1_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_1_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-5',
      'image': 'assets/images/cate_1_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_1_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-7',
      'image': 'assets/images/cate_1_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-8',
      'image': 'assets/images/cate_1_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-9',
      'image': 'assets/images/cate_1_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-10',
      'image': 'assets/images/cate_1_10.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-1',
      'image': 'assets/images/cate_2_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_2_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_2_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_2_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-5',
      'image': 'assets/images/cate_2_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_2_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-7',
      'image': 'assets/images/cate_2_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-8',
      'image': 'assets/images/cate_2_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-9',
      'image': 'assets/images/cate_2_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
  ];

  static List<Map<String, dynamic>> cate_2_List = [
    {
      'name': 'product-1',
      'image': 'assets/images/cate_2_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_2_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_2_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_2_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-5',
      'image': 'assets/images/cate_2_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_2_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-7',
      'image': 'assets/images/cate_2_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-8',
      'image': 'assets/images/cate_2_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-9',
      'image': 'assets/images/cate_2_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-1',
      'image': 'assets/images/cate_1_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_1_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_1_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_1_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-5',
      'image': 'assets/images/cate_1_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_1_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-7',
      'image': 'assets/images/cate_1_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-8',
      'image': 'assets/images/cate_1_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-9',
      'image': 'assets/images/cate_1_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-10',
      'image': 'assets/images/cate_1_10.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
  ];

  static List<Map<String, dynamic>> cate_3_List = [
    {
      'name': 'product-1',
      'image': 'assets/images/cate_3_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_3_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_3_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_3_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-5',
      'image': 'assets/images/cate_3_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_3_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
  ];

  static List<Map<String, dynamic>> cate_4_List = [
    {
      'name': 'product-1',
      'image': 'assets/images/cate_1_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_1_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_1_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_1_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-5',
      'image': 'assets/images/cate_1_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_1_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-7',
      'image': 'assets/images/cate_1_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-8',
      'image': 'assets/images/cate_1_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-9',
      'image': 'assets/images/cate_1_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-10',
      'image': 'assets/images/cate_1_10.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
  ].reversed.toList();
  static List<Map<String, dynamic>> cate_5_List = [
    {
      'name': 'product-5',
      'image': 'assets/images/cate_1_5.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-3',
      'image': 'assets/images/cate_1_3.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-1',
      'image': 'assets/images/cate_1_1.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-6',
      'image': 'assets/images/cate_1_6.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-2',
      'image': 'assets/images/cate_1_2.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-7',
      'image': 'assets/images/cate_1_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-8',
      'image': 'assets/images/cate_1_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-4',
      'image': 'assets/images/cate_1_4.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-9',
      'image': 'assets/images/cate_1_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-10',
      'image': 'assets/images/cate_1_10.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-11',
      'image': 'assets/images/cate_2_7.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-12',
      'image': 'assets/images/cate_2_8.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
    {
      'name': 'product-13',
      'image': 'assets/images/cate_2_9.jpg',
      'price': '${Random().nextInt(100) + 10}.0\$',
    },
  ];
}
