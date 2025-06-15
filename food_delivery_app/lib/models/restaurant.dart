import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu

  final List<Food> menu = [
    //burgers
    Food(
      name: "Butter Burger",
      description:
          "Our signature beef patty, double American cheese, burnt butter mayonnaise served with pickled papaya",
      imagePath: "lib/assets/images/burgers/Butter Burger.jpg",
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Sauce", price: 0.49),
        Addon(name: "Extra Patty", price: 1.49),
      ],
    ),
    Food(
      name: "Cali Burger",
      description:
          "Double Patty, Bacon, Caramelized Onions, 4 Layers of Cheese & Signature Dressing",
      imagePath: "lib/assets/images/burgers/Cali Burger.jpg",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Sauce", price: 0.49),
        Addon(name: "Extra Patty", price: 1.49),
      ],
    ),
    Food(
      name: "Cants Burger",
      description:
          "Burger Patty, Bacon, Caramelized Onions, 2 layers of Cheese & Signature Dressing",
      imagePath: "lib/assets/images/burgers/Cants Burger.jpg",
      price: 3.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Sauce", price: 0.49),
        Addon(name: "Extra Patty", price: 1.49),
      ],
    ),
    Food(
      name: "Hashbac Burger",
      description:
          "Signature beef patty, double american cheese, bacon & hashbrown added served with signature sauce",
      imagePath: "lib/assets/images/burgers/Hashbac Burger.jpg",
      price: 2.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Sauce", price: 0.49),
        Addon(name: "Extra Patty", price: 1.49),
      ],
    ),
    Food(
      name: "Sans Burger",
      description:
          "Burger Patty, Caramelized Onions, 2 layers of Cheese & Signature Dressing",
      imagePath: "lib/assets/images/burgers/Sans Burger.jpg",
      price: 1.59,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Sauce", price: 0.49),
        Addon(name: "Extra Patty", price: 1.49),
      ],
    ),
    Food(
      name: "Smokey BBQ Burger",
      description:
          "Our signature beef patty, double American cheese, caramelized onion served with bbq sauce",
      imagePath: "lib/assets/images/burgers/Smokey BBQ Burger.jpg",
      price: 3.39,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Extra Sauce", price: 0.49),
        Addon(name: "Extra Patty", price: 1.49),
      ],
    ),

    //breakfast
    Food(
      name: "Bacon Valy",
      description:
          "Golden waffles, bacon & egg sefved with butter maple syrup.",
      imagePath: "lib/assets/images/breakfast/Bacon Valy.jpg",
      price: 1.59,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Rice", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Soup", price: 1.49),
      ],
    ),
    Food(
      name: "Beef Tapa W Rice",
      description:
          "Signature beef tapa (sweet & spicy) served with plain rice, egg, atsara & vinegar",
      imagePath: "lib/assets/images/breakfast/Beef Tapa W Rice.jpg",
      price: 2.59,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Rice", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Soup", price: 1.49),
      ],
    ),
    Food(
      name: "Burger Valy",
      description:
          "Golden waffle buns, signature beef patty, double american cheese, bacon & egg added served with maple syrup.",
      imagePath: "lib/assets/images/breakfast/Burger Valy.jpg",
      price: 2.29,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Syrup", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Waffle", price: 1.49),
      ],
    ),
    Food(
      name: "Classic Valy",
      description: "2 Pcs Golden waffle served with butter & maple syrup.",
      imagePath: "lib/assets/images/breakfast/Classic Valy.jpg",
      price: 2.39,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Syruo", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Waffle", price: 1.49),
      ],
    ),
    Food(
      name: "Egg Valy",
      description: "Egg & bacon in a golden waffle bun",
      imagePath: "lib/assets/images/breakfast/Egg Valy.jpg",
      price: 1.59,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Egg", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "Finger Valy",
      description: "Golden waffles, chicken tenders served with 2 maple syrup.",
      imagePath: "lib/assets/images/breakfast/Finger Valy.jpg",
      price: 2.29,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Chicken Tenders", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Maple", price: 1.49),
      ],
    ),
    Food(
      name: "Hungarian & Egg With Rice",
      description:
          "Hungarian sausage & Egg served with plain rice with ketchup.",
      imagePath: "lib/assets/images/breakfast/Hungarian & Egg With Rice.jpg",
      price: 3.49,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Rice", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Egg", price: 1.49),
      ],
    ),
    Food(
      name: "Hungarian Valy",
      description:
          "Golden waffles, hungarian sausage, egg added served with maple syrup.",
      imagePath: "lib/assets/images/breakfast/Hungarian Valy.jpg",
      price: 2.79,
      category: FoodCategory.breakfast,
      availableAddons: [
        Addon(name: "Extra Rice", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Soup", price: 1.49),
      ],
    ),
    //desserts

    //drinks
    Food(
      name: "D' Alley Tea",
      description: "Refreshing Iced tea drink.",
      imagePath: "lib/assets/images/drinks/D' Alley Tea.jpg",
      price: 1.00,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Rice", price: 0.99),
        Addon(name: "Extra HotSauce", price: 0.49),
        Addon(name: "Extra Soup", price: 1.49),
      ],
    ),
    //drinks
    Food(
      name: "Chocolate Milkshake ",
      description: "Refreshing Iced tea drink.",
      imagePath: "lib/assets/images/drinks/Chocolate Milkshake.jpg",
      price: 1.40,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Nuggets", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "Oreo Milkshake",
      description: "Creamy vanilla ice cream served with blended oreo.",
      imagePath: "lib/assets/images/drinks/Oreo Milkshake.jpg",
      price: 1.39,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Nuggets", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "Vanilla Milkshake",
      description: "Vanilla ice cream blended serve with toppings",
      imagePath: "lib/assets/images/drinks/Vanilla Milkshake.jpg",
      price: 1.47,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Nuggets", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),

    //sides
    Food(
      name: "Cheesy BBQ Steak",
      description:
          "Signature Beef Slices, Caramelized Onions, Cheese Sauce inside, Mushroom added served with BBQ Sauce.",
      imagePath: "lib/assets/images/sides/Cheesy BBQ Steak.jpg",
      price: 1.47,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "Cheesy White Steak",
      description:
          "Signature Beef Slices, Caramelized Onions, Cheese Sauce inside, Mushroom Added served with Special White Sauce.",
      imagePath: "lib/assets/images/sides/Cheesy White Steak.jpg",
      price: 2.87,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "D Alley Nuggets",
      description: "Served with BBQ sauce.",
      imagePath: "lib/assets/images/sides/D Alley Nuggets.jpg",
      price: 1.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "Hot Choco",
      description: "Hot Dark Chocolate drink 12 oz",
      imagePath: "lib/assets/images/sides/Hot Choco.jpg",
      price: 2.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "Salms Fries",
      description: "Fries, caramelized onion served with cheese sauce.",
      imagePath: "lib/assets/images/sides/Salms Fries.jpg",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
    Food(
      name: "White Hot Choco",
      description: "Hot Dark Choco with Milk 12oz.",
      imagePath: "lib/assets/images/sides/White Hot Choco.jpg",
      price: 1.59,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),

    /*
    GETTERS
    */

    /*
    OPERATIONS
    */
    //add to cart
    //remove from cart
    //get total price of cart
    //get total number of items in cart
    //clear cart


    /*
    HELPERS
    */

    //generate a receipt
    //format double value to money
    //format list of addons into a string summary


  ];
}
