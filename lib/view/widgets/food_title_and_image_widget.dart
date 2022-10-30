import 'package:flutter/material.dart';

import '../../models/food_model.dart';
import '../../res/styles.dart';

class FoodTitleAndImageWidget extends StatelessWidget {
  const FoodTitleAndImageWidget({
    Key? key,
    required this.popFood,
  }) : super(key: key);

  final PopularFood popFood;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(popFood.foodName, style: titleText),
          const SizedBox(height: 4.0),
          Text('Our very own! ${popFood.description}', style: grey16),
          const SizedBox(height: 20.0),
          Center(
            child: Image(
              image: AssetImage(popFood.imageUrl),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}
