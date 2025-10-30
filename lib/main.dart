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
          seedColor: const Color.fromARGB(255, 95, 245, 210),
          primary: const Color.fromARGB(255, 95, 245, 210),
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