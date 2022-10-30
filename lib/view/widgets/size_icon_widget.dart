import 'package:flutter/material.dart';
import 'package:food_app/view_model/size_and_quantity_provider.dart';

import '../../res/styles.dart';

class SizeIconWidget extends StatelessWidget {
  const SizeIconWidget({
    super.key,
    required this.provider,
  });

  final SizeAndQuantityProvider provider;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: provider.size.length,
              itemBuilder: (context, index) {
                final currentIndex = provider.currentIndex;
                return GestureDetector(
                  onTap: () {
                    provider.onSelected(index);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    alignment: Alignment.center,
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                      color: currentIndex == index ? greenColor : whiteColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      provider.size[index],
                      style: TextStyle(
                        color: currentIndex == index ? whiteColor : blackColor,
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
