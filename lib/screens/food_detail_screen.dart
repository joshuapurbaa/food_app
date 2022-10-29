import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/models/model.dart';
import 'package:food_app/theme/styles.dart';

import '../widgets/widgets.dart';

class FoodDetailScreen extends StatefulWidget {
  final PopularFood popFood;

  const FoodDetailScreen({required this.popFood});
  @override
  _FoodDetailScreenState createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  int quantity = 0;
  bool minusClick = false;
  bool addClick = false;
  bool stop = false;

  bool favFill = false;
  bool basketFill = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: const Icon(FontAwesomeIcons.chevronLeft),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                      IconButton(
                          icon: const Icon(FontAwesomeIcons.ellipsisV),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('Steak House', style: titleText),
                    const SizedBox(height: 4.0),
                    Text('Our very own! Smashed\nbeef burgers', style: grey16),
                  ],
                ),
                const SizedBox(height: 50.0),
                const Image(image: AssetImage('assets/images/humburger1.png')),
                const SizedBox(height: 50.0),
                Text('Size', style: blackText14),
                const SizedBox(height: 4.0),
                const SizeIconWidget(),
                const SizedBox(height: 30.0),
                Text('Quantity', style: blackText14),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    QuantityButtonWidget(
                      backgroundColor: minusClick ? greenColor : whiteColor,
                      iconColor: minusClick ? whiteColor : blackColor,
                      icon: FontAwesomeIcons.minus,
                      onPressed: () {
                        setState(() {
                          quantity--;
                          minusClick = true;
                          addClick = false;
                        });
                      },
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 30.0,
                      child: Text(quantity.toString()),
                    ),
                    QuantityButtonWidget(
                      backgroundColor: addClick ? greenColor : whiteColor,
                      iconColor: addClick ? whiteColor : blackColor,
                      icon: FontAwesomeIcons.plus,
                      onPressed: () {
                        setState(() {
                          quantity++;
                          addClick = true;
                          minusClick = false;
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price',
                            style:
                                grey14.copyWith(fontWeight: FontWeight.w500)),
                        const SizedBox(height: 9.0),
                        Text('IDR 59.999', style: blackText20),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              favFill = true;
                              basketFill = false;
                            });
                          },
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                color: favFill ? greenColor : silverColor,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Icon(
                              FontAwesomeIcons.heart,
                              color: favFill ? whiteColor : blackColor,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              basketFill = true;
                              favFill = false;
                            });
                          },
                          child: Container(
                            height: 60.0,
                            width: 60.0,
                            decoration: BoxDecoration(
                                color: basketFill ? greenColor : silverColor,
                                borderRadius: BorderRadius.circular(30.0)),
                            child: Icon(
                              FontAwesomeIcons.shoppingBasket,
                              color: basketFill ? whiteColor : blackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
