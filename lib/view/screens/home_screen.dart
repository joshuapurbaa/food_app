import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/res/styles.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(
                leftIcon: FontAwesomeIcons.bars,
                rightIcon: FontAwesomeIcons.shoppingBasket,
                onPressed: () {},
              ),
              const TextFieldWidget(),
              const SizedBox(height: 30.0),
              CategoryMenuWidget(),
              const SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text(
                  'Popular Food',
                  style: titleText,
                ),
              ),
              const PopularFoodWidget(),
            ],
          ),
        ),
        bottomNavigationBar: const BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: CustomBottomNavBar(),
        ));
  }
}
