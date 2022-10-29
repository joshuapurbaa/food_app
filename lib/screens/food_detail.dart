import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/models_and_styles/model.dart';
import 'package:food_app/models_and_styles/styles.dart';
import 'package:food_app/widgets/quantity_button.dart';
import 'package:food_app/widgets/size_icon.dart';

class FoodDetail extends StatefulWidget {
  final PopularFood popFood;

  FoodDetail({this.popFood});
  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
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
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                                                                                               
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(FontAwesomeIcons.chevronLeft),
                          onPressed: () {
                            Navigator.pop(context);
                          }), 
                      IconButton(
                          icon: Icon(FontAwesomeIcons.ellipsisV),
                          onPressed: () {}),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text('Steak House', style: titleText),
                    SizedBox(height: 4.0),
                    Text('Our very own! Smashed\nbeef burgers', style: grey16),
                  ],
                ),
                SizedBox(height: 50.0),
                Image(image: AssetImage('assets/images/humburger1.png')),
                SizedBox(height: 50.0),
                Text('Size', style: blackText14),
                SizedBox(height: 4.0),
                SizeIcon(),
                SizedBox(height: 30.0),
                Text('Quantity', style: blackText14),
                SizedBox(height: 4.0),
                Row(
                  children: [
                    QuantityButton(
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
                    QuantityButton(
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
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Price',
                            style:
                                grey14.copyWith(fontWeight: FontWeight.w500)),
                        SizedBox(height: 9.0),
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
                        SizedBox(width: 20.0),
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
                SizedBox(height: 20.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}
