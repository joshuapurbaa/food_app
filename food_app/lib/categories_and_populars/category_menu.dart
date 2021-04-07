import 'package:flutter/material.dart';
import 'package:food_app/models_and_styles/styles.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Fast Food', 'Desert', 'Drinks', 'Snacks'];

  Widget _buildTabBar(int index) {
    return Tab(
      child: Container(
        child: Text(categories[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: DefaultTabController(
        length: 4,
        child: TabBar(
            labelPadding: EdgeInsets.only(left: 30.0, right: 27.0),
            indicatorPadding: EdgeInsets.only(left: 14.0, right: 14.0),
            isScrollable: true,
            labelColor: greenColor,
            unselectedLabelColor: greyColor,
            labelStyle: grey14,
            indicator: ShapeDecoration(
                shape: UnderlineInputBorder(
              borderSide: BorderSide(
                color: greenColor,
                width: 4,
              ),
            )),
            indicatorSize: TabBarIndicatorSize.label,
            tabs: categories
                .asMap()
                .entries
                .map((MapEntry map) => _buildTabBar(map.key))
                .toList()),
      ),
    );
  }
}
