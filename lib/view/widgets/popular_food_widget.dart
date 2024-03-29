import 'package:flutter/material.dart';
import 'package:food_app/models/food_model.dart';
import 'package:food_app/res/styles.dart';
import 'package:food_app/view/screens/food_detail_screen.dart';

import '../../models/data/food_data.dart';

class PopularFoodWidget extends StatelessWidget {
  const PopularFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.only(top: 10.0, bottom: 15.0),
          itemCount: populars.length,
          itemBuilder: (BuildContext context, int index) {
            final PopularFood popFood = populars[index];
            return Stack(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => FoodDetailScreen(
                        popFood: popFood,
                      ),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding, vertical: 10.0),
                    height: 120.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: silverColor,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          popFood.imageUrl,
                          width: 68,
                          cacheWidth: 178,
                          cacheHeight: 183,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popFood.foodName,
                              style: blackText14,
                            ),
                            Text(
                              popFood.description,
                              style: grey12,
                            ),
                            const SizedBox(height: 7.0),
                            Text(
                              popFood.price,
                              style: blackText14w600,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 45.0,
                  bottom: 15.0,
                  child: Container(
                    height: 36.0,
                    width: 36.0,
                    decoration: BoxDecoration(
                      color: greenColor,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
