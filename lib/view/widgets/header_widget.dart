import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget(
      {Key? key,
      required this.leftIcon,
      required this.rightIcon,
      required this.onPressed})
      : super(key: key);

  final IconData leftIcon;
  final IconData rightIcon;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(leftIcon),
            onPressed: onPressed,
          ),
          IconButton(
            icon: Icon(rightIcon),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
