import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/categories_and_populars/category_menu.dart';
import 'package:food_app/categories_and_populars/popular_food.dart';
import 'package:food_app/models_and_styles/styles.dart';
import 'package:food_app/widgets/bottomNavBar.dart';
// import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class SearchResultScreen extends StatefulWidget {
  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  int currenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      icon: Icon(FontAwesomeIcons.bars), onPressed: () {}),
                  IconButton(
                      icon: Icon(FontAwesomeIcons.shoppingBasket),
                      onPressed: () {}),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  fillColor: silverColor,
                  filled: true,
                  suffixIcon: Icon(
                    Icons.search,
                    color: greyColor,
                  ),
                  hintText: 'Search',
                  hintStyle: grey12,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Categories(),
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: Text(
                'Popular Food',
                style: titleText,
              ),
            ),
            PopularWidget(),
            CustomBottomNavBar(),
          ],
        ),
      ),
    );
  }
}
