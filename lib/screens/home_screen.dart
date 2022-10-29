import 'package:flutter/material.dart';
import 'package:food_app/theme/styles.dart';

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
            const HeaderWidget(),
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
            CustomBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
