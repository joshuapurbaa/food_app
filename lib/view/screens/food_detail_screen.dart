import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/res/styles.dart';
import 'package:food_app/view/widgets/size_and_quantity_widget.dart';

import '../widgets/widgets.dart';

class FoodDetailScreen extends StatefulWidget {
  const FoodDetailScreen({super.key, required this.popFood});
  final PopularFood popFood;

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HeaderWidget(
            leftIcon: FontAwesomeIcons.chevronLeft,
            rightIcon: FontAwesomeIcons.ellipsisV,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          FoodTitleAndImageWidget(
            popFood: widget.popFood,
          ),
          const SizeAndQuantityWidget(),
          const SizedBox(height: 20.0),
          const PriceAndBottomIconsWidget(),
          const SizedBox(height: 20.0)
        ],
      ),
    );
  }
}
