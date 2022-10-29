import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/theme/styles.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

enum BottomIcons {
  home,
  notification,
  favorite,
  account,
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  BottomIcons bottomIcons = BottomIcons.home;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 15.0),
          decoration: BoxDecoration(
              color: silverColor,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(27.0))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.home;
                    });
                  },
                  child: bottomIcons == BottomIcons.home
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.home,
                                color: whiteColor,
                              ),
                              const SizedBox(
                                width: 12.0,
                              ),
                              Text(
                                'Home',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : const Icon(FontAwesomeIcons.home)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.notification;
                    });
                  },
                  child: bottomIcons == BottomIcons.notification
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.bell,
                                color: whiteColor,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Notification',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : const Icon(FontAwesomeIcons.bell)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.favorite;
                    });
                  },
                  child: bottomIcons == BottomIcons.favorite
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.heart,
                                color: whiteColor,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Favorite',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : const Icon(FontAwesomeIcons.heart)),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      bottomIcons = BottomIcons.account;
                    });
                  },
                  child: bottomIcons == BottomIcons.account
                      ? Container(
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(30.0)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.user,
                                color: whiteColor,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'Account',
                                style: whiteText14,
                              )
                            ],
                          ),
                        )
                      : const Icon(FontAwesomeIcons.user)),
            ],
          ),
        )
      ],
    );
  }
}
