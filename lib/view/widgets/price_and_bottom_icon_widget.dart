import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/view_model/heart_and_basket_icon_provider.dart';
import 'package:provider/provider.dart';

import '../../res/styles.dart';

class PriceAndBottomIconsWidget extends StatelessWidget {
  const PriceAndBottomIconsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Price',
                  style: grey14.copyWith(fontWeight: FontWeight.w500)),
              const SizedBox(height: 9.0),
              Text('IDR 59.999', style: blackText20),
            ],
          ),
          Consumer<HeartAndBasketIconProvider>(
            builder: (context, provider, child) {
              return Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      provider.hearSelected();
                    },
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color: provider.heartSelect ? greenColor : whiteColor,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Icon(
                        FontAwesomeIcons.heart,
                        color: provider.heartSelect ? whiteColor : blackColor,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  GestureDetector(
                    onTap: () {
                      provider.basketSelected();
                    },
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          color:
                              provider.basketSelect ? greenColor : whiteColor,
                          borderRadius: BorderRadius.circular(30.0)),
                      child: Icon(
                        FontAwesomeIcons.shoppingBasket,
                        color: provider.basketSelect ? whiteColor : blackColor,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
