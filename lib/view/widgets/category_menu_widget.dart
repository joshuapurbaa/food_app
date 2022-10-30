import 'package:flutter/material.dart';
import 'package:food_app/res/styles.dart';

class CategoryMenuWidget extends StatelessWidget {
  CategoryMenuWidget({super.key});

  final List<String> categories = ['Fast Food', 'Desert', 'Drinks', 'Snacks'];

  Widget _buildTabBar(int index) {
    return Tab(
      child: Text(categories[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: DefaultTabController(
        length: 4,
        child: TabBar(
          labelPadding: const EdgeInsets.only(left: 30.0, right: 27.0),
          indicatorPadding: const EdgeInsets.only(left: 14.0, right: 14.0),
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
              .toList(),
        ),
      ),
    );
  }
}
