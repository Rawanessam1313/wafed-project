class cafe_Food {
  cafe_Food({
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
  factory cafe_Food.fromJson(Map<String, dynamic> json) => cafe_Food(
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

final dummycafe = [
  cafe_Food(
    id: '1',
    image: 'assets/images/food/cheers.png',
    name: 'Cheers',
    price: 15,
    rate: 4.5,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://drive.google.com/drive/mobile/folders/1iweWyehd0CYSrN6Q-WUTEEJEZhm77Y7A?usp=sharing"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/CheersCafeEg/?locale=ms_MY"
      },
    ],
  ),
  cafe_Food(
    id: '2',
    image: 'assets/images/food/hathout.png',
    name: 'Hathout',
    price: 20,
    rate: 4.5,
    descriptions: [
      {"description": "Go to the menu", "link": "https://hathout.com/index"},
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/HATHOUT.Sweetshop/?locale=ar_AR"
      },
    ],
  ),
  cafe_Food(
    id: '3',
    image: 'assets/images/food/mug.png',
    name: 'MUG',
    price: 10,
    rate: 4,
    descriptions: [
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/mugcafe.20/"
      },
    ],
  ),
  cafe_Food(
    id: '4',
    image: 'assets/images/food/bellissimo.png',
    name: 'Bellissimo',
    price: 12,
    rate: 4.8,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://www.facebook.com/Bellissimocoffeeegypt/menu/?id=100064786836602&sk=menu&locale=ar_AR"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/Bellissimocoffeeegypt/?locale=ar_AR"
      },
    ],
  ),
  cafe_Food(
    id: '5',
    image: 'assets/images/food/tree.png',
    name: 'Tree',
    price: 12,
    rate: 4.8,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://sites.google.com/view/menus-tree/%D8%A7%D9%84%D8%B5%D9%81%D8%AD%D8%A9-%D8%A7%D9%84%D8%B1%D8%A6%D9%8A%D8%B3%D9%8A%D8%A9?fbclid=IwZXh0bgNhZW0CMTAAAR0hFjnM8TWn01lfPLSYnpmPs-W-ius-0oUrFR8E_XBoHsqbwZhKUQLON30_aem_AfnlwUJzE1Rxvy4_ziF4colx849Ah4a1_sesxDKLkSpwWRBNer93f73TqSIRaLuyhIm0JAdFS9m5L2aRx1vM-5sI"
      },
      {
        "description": "facebook page",
        "link": "https://www.facebook.com/TreeCafe2021/?locale=ar_AR"
      },
    ],
  ),
  cafe_Food(
    id: '6',
    image: 'assets/images/food/polar.jpeg',
    name: 'Polar',
    price: 12,
    rate: 4.8,
    descriptions: [
      {
        "description": "Go to the menu",
        "link":
            "https://www.facebook.com/PolarCafeandRestaurant/posts/383199224639974"
      },
      {
        "description": "facebook page",
        "link":
            "https://www.facebook.com/photo.php?fbid=244635951829636&id=100088496996666&set=a.132669793026253&locale=en_GB"
      },
    ],
  ),
];
