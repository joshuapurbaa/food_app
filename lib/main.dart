import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/view_model/bottom_navbar_provider.dart';
import 'package:food_app/view/screens/home_screen.dart';
import 'package:food_app/view_model/heart_and_basket_icon_provider.dart';
import 'package:food_app/view_model/size_and_quantity_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SizeAndQuantityProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => HeartAndBasketIconProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const HomeScreen(),
      ),
    );
  }
}
