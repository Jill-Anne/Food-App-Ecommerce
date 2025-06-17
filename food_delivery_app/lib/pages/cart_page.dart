import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //scaffold ui
        return Scaffold(
          appBar: AppBar(
            title: Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title:
                            const Text("Are you sure you wat to clear cart?"),
                        actions: [
                          //cancel button
                          TextButton(
                              child: const Text("Cancel"),
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                          //yes button
                          TextButton(
                            child: const Text("Yes"),
                            onPressed: () {
                              Navigator.pop(context);
                              restaurant.clearCart();
                            },
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
          body: Column(
            children: [
              userCart.isEmpty
                  ? const Expanded(
                      child: Center(
                        child: const Text('Cart is Empty'),
                      ),
                    )
                  : Expanded(
                      child: ListView.builder(
                        itemCount: userCart.length,
                        itemBuilder: (context, index) {
                          //get individual cart item
                          final cartItem = userCart[index];

                          //return cart tile ui
                          return MyCartTile(cartItem: cartItem);
                        },
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
