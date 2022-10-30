import 'package:flutter/material.dart';

class QuantityButtonWidget extends StatelessWidget {
  const QuantityButtonWidget({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.backgroundColor,
    required this.iconColor,
  });
  final IconData icon;
  final Function() onPressed;
  final Color backgroundColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 35.0,
        height: 35.0,
      ),
      shape: const CircleBorder(),
      fillColor: backgroundColor,
      child: Icon(
        icon,
        size: 12.0,
        color: iconColor,
      ),
    );
  }
}
