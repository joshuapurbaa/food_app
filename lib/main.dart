import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/view_model/bottom_navbar_provider.dart';
import 'package:food_app/view/screens/home_screen.dart';
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
    return ChangeNotifierProvider<BottomNavBarProvider>(
      create: (context) => BottomNavBarProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Poppins'),
        home: const HomeScreen(),
      ),
    );
  }
}
