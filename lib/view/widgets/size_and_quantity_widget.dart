import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_app/view_model/size_and_quantity_provider.dart';
import 'package:provider/provider.dart';

import '../../res/styles.dart';
import 'widgets.dart';

class SizeAndQuantityWidget extends StatelessWidget {
  const SizeAndQuantityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SizeAndQuantityProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Size', style: blackText14),
              const SizedBox(height: 10.0),
              SizeIconWidget(
                provider: provider,
              ),
              const SizedBox(height: 30.0),
              Text('Quantity', style: blackText14),
              const SizedBox(height: 4.0),
              Row(
                children: [
                  QuantityButtonWidget(
                    backgroundColor: greenColor,
                    iconColor: whiteColor,
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      if (provider.quantity != 0) {
                        provider.decrement();
                      }
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30.0,
                    child: Text(provider.quantity.toString()),
                  ),
                  QuantityButtonWidget(
                    backgroundColor: greenColor,
                    iconColor: whiteColor,
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      provider.increment();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
