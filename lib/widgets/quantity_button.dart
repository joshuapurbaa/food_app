import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  QuantityButton(
      {this.icon, this.onPressed, this.backgroundColor, this.iconColor});
  final IconData icon;
  final Function onPressed;
  final Color backgroundColor;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 12.0,
        color: iconColor,
      ),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 35.0,
        height: 35.0,
      ),
      shape: CircleBorder(),
      fillColor: backgroundColor,
    );
  }
}
