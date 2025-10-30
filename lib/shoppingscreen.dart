import 'package:flutter/material.dart';

class Shoppingscreen extends StatelessWidget {
  const Shoppingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: const Text(
                    "Shoes\nCollection" , 
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),),
                ),

                Expanded(child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: const Icon(Icons.search),
                    border:  OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 175, 168, 168),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 175, 168, 168),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 175, 168, 168),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                )),

              ],
            )
            ,
          ],
        ),
      ),
      
    );
  }
}