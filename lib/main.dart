import 'package:basic_online_shopping_app/shoppingScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const OnlineShoppingApp());
}

class OnlineShoppingApp extends StatelessWidget {
  const OnlineShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Lato",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(100, 255, 218, 1),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Color.fromRGBO(82, 82, 82, 1),
          ),
      ),
      
      home: Shoppingscreen(),
    );
  }
}