import 'package:flutter/material.dart';

import '../../res/styles.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          fillColor: silverColor,
          filled: true,
          suffixIcon: Icon(
            Icons.search,
            color: greyColor,
          ),
          hintText: 'Search',
          hintStyle: grey12,
        ),
      ),
    );
  }
}
