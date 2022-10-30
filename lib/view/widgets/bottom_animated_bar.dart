import 'package:flutter/material.dart';

import '../../res/styles.dart';

class BottomAnimatedBar extends StatelessWidget {
  const BottomAnimatedBar({
    Key? key,
    this.isSelected = false,
    required this.onPressed,
    required this.iconData,
  }) : super(key: key);

  final bool isSelected;
  final Function() onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        padding: isSelected
            ? const EdgeInsets.symmetric(vertical: 8, horizontal: 10)
            : const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: isSelected ? greenColor : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
        ),
        duration: const Duration(milliseconds: 200),
        curve: Curves.fastOutSlowIn,
        child: Row(
          children: [
            Icon(
              iconData,
              size: 30,
              color: isSelected ? whiteColor : blackColor,
            ),
            const SizedBox(
              width: 12,
            ),
            isSelected
                ? Text(
                    'Home',
                    style: whiteText14,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
