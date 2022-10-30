import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(FontAwesomeIcons.bars),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(FontAwesomeIcons.shoppingBasket),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
