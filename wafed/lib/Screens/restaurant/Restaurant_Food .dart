import 'package:wafed/localization.dart';

class Restaurant_Food {
  Restaurant_Food({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.descriptions,
  });

  String id;
  String image;
  String name;

  int price;
  double rate;
  List<Map<String, String>> descriptions;

  factory Restaurant_Food.fromJson(Map<String, dynamic> json) =>
      Restaurant_Food(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        rate: json["rate"].toDouble(),
        descriptions: List<Map<String, String>>.from(
            json["descriptions"].map((x) => Map<String, String>.from(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "price": price,
        "rate": rate,
        "description": List<dynamic>.from(descriptions.map((x) => x)),
      };
}

final dummyRestaurant = [
  Restaurant_Food(
    id: '1',
    image: 'assets/images/food/donvito.png',
    name: 'Donvito',
    price: 15,
    rate: 4.5,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://www.facebook.com/profile.php?id=100090390236115&sk=menu"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/profile.php?id=100090390236115"
      },
    ],
  ),
  Restaurant_Food(
    id: '2',
    image: 'assets/images/food/eldemshqy 1.png',
    name: 'Edemshqy',
    price: 20,
    rate: 4.5,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://l.facebook.com/l.php?u=http%3A%2F%2Feldemeshki.com%2F%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR1FC3q6FjjXTQHqfsjH8aFL90GZBhouEF0Go_RmEh5dB3RRdAg9nua-0Zw_aem_AfmkemoP6zNSEz6YcCo-TMzf9KWXwynwRsGxysGIcR7XgQcCmFaEnXW8GRxOEhp8aE1qOZQbbFYeVG-vbAmXgEEK&h=AT1Juy7KJkP1iBF_uZ87MOzyWTtmXtI2RUtXu6vSFoYimm-cBYjwIOcvfVL4lupXiZ4OUTKB0jg3-ouDdicJ78obk-9Q4ofxCRQcujQqLBorr11IzyD5ZA4wQ9hzZgfkoEVI&__tn__=-UK-R&c[0]=AT3LtHR4SgeQh6YtOUb_6lu_omp3m1YMSFyVkenzO5ji0NtWTtY_CVyHxz2A1xoV-oKlZWWuZHJRdZMVUxj2zoEAZdYKNta_ewSh-WLjGV63EGX7twCyWWkI1cd97FJX5Vmm0Bl2FpNpW6nwAexVXBs0KrJ17C0-wsFXO_TgPPEfoSdNqvHtd3uX-rXmsaPddoG3IDFhRg"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/eldemshqy"
      },
    ],
  ),
  Restaurant_Food(
    id: '3',
    image: 'assets/images/food/trefl.png',
    name: 'Trefl',
    price: 10,
    rate: 4,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://l.facebook.com/l.php?u=http%3A%2F%2Flinktr.ee%2Ftreflcafe%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR3GGeCg-SwPC7_DMFqA2CaP50Qx_utWsyr8fZfemQqsbrw5RYTbeGAJBms_aem_AfmXDuMxSXzyyNPPdKcvQ26ssKMvrZvW4mXjbhmGPjSihf65LGKlmLlc5RalcfZhQ5pum1d5XkHfVrTPl8zZrdD8&h=AT3RnnPJydAXLHlNFIfDsez9SEDyyK-w6l3mr4EGv76bEe3udg_X-yCqXXiX4KDqDtmC8lkIhBUfn1AfhfNVRlGNsTJNFRBiEmLgEV8OXeLnJ-sXjcdJaJ18JFn5xHPeJa78fA"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/Trefl.Egypt"
      },
    ],
  ),
  Restaurant_Food(
    id: '4',
    image: 'assets/images/food/samena.png',
    name: 'Samena',
    price: 12,
    rate: 4.8,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://l.facebook.com/l.php?u=https%3A%2F%2Fdrive.google.com%2Fdrive%2Ffolders%2F14R_Gxp0rRzB8GJvDFGkg8AuBmbF3PFPl%3Ffbclid%3DIwZXh0bgNhZW0CMTAAAR0V4zHfY4h5m8pWV3Yyp0UGCRl54sDn3oEFxFEvv59YOImPteXo9Z_u6tY_aem_AfkelUCmpQHXg_DsSsCz37WZhGOzxZZzbGFqMABBaH78_6BxSmgXPOHFzHpk7TbdOCf0b1Kmkp6q8lxr5r-ukbp8&h=AT3RnnPJydAXLHlNFIfDsez9SEDyyK-w6l3mr4EGv76bEe3udg_X-yCqXXiX4KDqDtmC8lkIhBUfn1AfhfNVRlGNsTJNFRBiEmLgEV8OXeLnJ-sXjcdJaJ18JFn5xHPeJa78fA"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/Shamina.Paris"
      },
    ],
  ),
  Restaurant_Food(
    id: '5',
    image: 'assets/images/food/mrsmash.jpeg',
    name: 'Mr.Smash',
    price: 12,
    rate: 4.8,
    descriptions: [
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/1.Mr.Smash"
      },
    ],
  ),
  Restaurant_Food(
    id: '6',
    image: 'assets/images/food/felfela.png',
    name: 'Felfela',
    price: 12,
    rate: 4.8,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://www.facebook.com/stories/2349861205225087/?source=profile_highlight"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/FelfelaRestaurant1"
      },
    ],
  ),
];
