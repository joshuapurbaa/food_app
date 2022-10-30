import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/res/styles.dart';
import 'package:food_app/view_model/bottom_navbar_provider.dart';
import 'package:provider/provider.dart';

import 'widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
      decoration: BoxDecoration(
        color: silverColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(27.0),
        ),
      ),
      child: Consumer<BottomNavBarProvider>(
        builder: (context, proviver, child) {
          int currentIndex = proviver.currentIndex;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomAnimatedBar(
                iconData: FontAwesomeIcons.home,
                isSelected: currentIndex == 0 ? true : false,
                onPressed: () {
                  int index = 0;
                  proviver.onSelected(index);
                },
              ),
              BottomAnimatedBar(
                iconData: FontAwesomeIcons.bell,
                isSelected: currentIndex == 1 ? true : false,
                onPressed: () {
                  int index = 1;
                  proviver.onSelected(index);
                },
              ),
              BottomAnimatedBar(
                iconData: FontAwesomeIcons.heart,
                isSelected: currentIndex == 2 ? true : false,
                onPressed: () {
                  int index = 2;
                  proviver.onSelected(index);
                },
              ),
              BottomAnimatedBar(
                iconData: FontAwesomeIcons.user,
                isSelected: currentIndex == 3 ? true : false,
                onPressed: () {
                  int index = 3;
                  proviver.onSelected(index);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
