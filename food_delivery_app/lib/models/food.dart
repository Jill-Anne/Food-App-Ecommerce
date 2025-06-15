class Food {
  final String name; //cheese burger
  final String description; // burger full of cheese
  final String imagePath; //lib/assets/images/cheese_burger.png
  final double price; //4.99
  final FoodCategory category; // burger
  List<Addon> availableAddons; // [aaxtra cheese, extra sauce, extra patty]  

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories

enum FoodCategory {
  breakfast,
  burgers,
  drinks,
  sides,
}

//food addons

class Addon {
  String name;
  double price;

  Addon({required this.name, required this.price});
}
