import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;

  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(food.name),
                    Text(food.description),
                    Text('\$${food.price.toStringAsFixed(2)}'),
                  ],
                ),
              ),
              Image.asset(food.imagePath, width: 100, height: 100),
            ],
          ),
        ),
      ],
    );
  }
}
