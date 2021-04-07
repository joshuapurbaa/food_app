import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/models_and_styles/styles.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

enum BottomIcons {
  Home,
  Notification,
  Favorite,
  Account,
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  BottomIcons bottomIcons = BottomIcons.Home;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
          decoration: BoxDecoration(
              color: silverColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(27.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.Home;
                    });
                  },
                  child: bottomIcons == BottomIcons.Home
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.home,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                'Home',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : Icon(FontAwesomeIcons.home)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.Notification;
                    });
                  },
                  child: bottomIcons == BottomIcons.Notification
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.bell,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Notification',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : Icon(FontAwesomeIcons.bell)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.Favorite;
                    });
                  },
                  child: bottomIcons == BottomIcons.Favorite
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.heart,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Favorite',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : Icon(FontAwesomeIcons.heart)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.Account;
                    });
                  },
                  child: bottomIcons == BottomIcons.Account
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.user,
                                color: whiteColor,
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Account',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : Icon(FontAwesomeIcons.user)),
            ],
          ),
        )
      ],
    );
  }
}
