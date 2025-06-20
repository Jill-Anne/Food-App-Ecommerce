import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/cart_item.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu

  final List<Food> _menu = [
    //burgers
    Food(
      name: "Butter Burger",
      description:
          "Our signature beef patty, double American cheese, burnt butter mayonnaise served with pickled papaya",
      imagePath: "assets/images/burgers/Butter Burger.jpg",
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
      imagePath: "assets/images/burgers/Cali Burger.jpg",
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
      imagePath: "assets/images/burgers/Cants Burger.jpg",
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
      imagePath: "assets/images/burgers/Hashbac Burger.jpg",
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
      imagePath: "assets/images/burgers/Sans Burger.jpg",
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
      imagePath: "assets/images/burgers/Smokey BBQ Burger.jpg",
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
      imagePath: "assets/images/breakfast/Bacon Valy.jpg",
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
      imagePath: "assets/images/breakfast/Beef Tapa W Rice.jpg",
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
      imagePath: "assets/images/breakfast/Burger Valy.jpg",
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
      imagePath: "assets/images/breakfast/Classic Valy.jpg",
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
      imagePath: "assets/images/breakfast/Egg Valy.jpg",
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
      imagePath: "assets/images/breakfast/Finger Valy.jpg",
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
      imagePath: "assets/images/breakfast/Hungarian & Egg With Rice.jpg",
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
      imagePath: "assets/images/breakfast/Hungarian Valy.jpg",
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
      imagePath: "assets/images/drinks/D' Alley Tea.jpg",
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
      imagePath: "assets/images/drinks/Chocolate Milkshake.jpg",
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
      imagePath: "assets/images/drinks/Oreo Milkshake.jpg",
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
      imagePath: "assets/images/drinks/Vanilla Milkshake.jpg",
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
      imagePath: "assets/images/sides/Cheesy_BBQ_Steak.jpg",
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
      imagePath: "assets/images/sides/Cheesy_White_Steak.jpg",
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
      imagePath: "assets/images/sides/D_Alley_Nuggets.jpg",
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
      imagePath: "assets/images/sides/Hot_Choco.jpg",
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
      imagePath: "assets/images/sides/Salms_Fries.jpg",
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
      imagePath: 'assets/images/sides/White_Hot_Choco.jpg',
      price: 1.59,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bbq", price: 0.99),
        Addon(name: "Fries", price: 0.49),
        Addon(name: "Chips", price: 1.49),
      ],
    ),
  ];

  /*
    GETTERS
    */
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;

  /*
    OPERATIONS
    */
  //user cart
  final List<CartItem> _cart = [];
  //add to cart

  //add to cart

  void addToCart(Food food, List<Addon> selectedAddons) {
    //see if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      bool isSameFood = item.food == food;

      //check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    //if item already exists,increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }

    //otherwise add a new cart item to the cart
    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons),
      );
    }
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //get total price of cart

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  //get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  //clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*
    HELPERS
    */

  //generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    //
    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------------------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
          "      Add-ons: ${_formatAddons(cartItem.selectedAddons)}",
        );
      }
      receipt.writeln();
    }

    receipt.writeln("-----------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //format double value to money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  //format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(",");
  }
}
