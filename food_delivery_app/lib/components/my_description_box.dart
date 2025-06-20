import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});



  @override
  Widget build(BuildContext context) {
      //textstyle
  var myPrimaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
  var mySecondaryTextStyle = TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.only(left:25.0, bottom: 25.0, right: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //delivery fee
          Column(
            children: [
              Text(
                '\$6.99',
                style: myPrimaryTextStyle
                ),
            
              Text(
                'Delivery Fee',
                 style: mySecondaryTextStyle
              ),
            ],
          ),

          //delivery time
          Column(
            children: [
              Text(
                '15-30 min',
                style: myPrimaryTextStyle
              ),
              Text(
                'Delivery time',
                style: mySecondaryTextStyle
              ),
            ],
          ),
        ],
      ),
    );
  }
}
