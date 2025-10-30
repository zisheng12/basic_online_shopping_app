import 'package:flutter/material.dart';

class Shoppingscreen extends StatefulWidget {
  const Shoppingscreen({super.key});

  @override
  State<Shoppingscreen> createState() => _ShoppingscreenState();
}

class _ShoppingscreenState extends State<Shoppingscreen> {
  final List<String> companies = const [
    "All",
    "Nike",
    "Addidas",
    "Bata",
    ];
  
  late String selectedfilter;

  @override
  void initState() {
    super.initState();
    selectedfilter = companies[0];
  }

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
                  keyboardType: TextInputType.text,
                )),
                
              ],
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                    itemCount: companies.length,
                    itemBuilder: (context, index) {
                      final filter = companies[index];
                      return Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 13.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedfilter = filter;
                            });
                          },
                          child: Chip(
                            backgroundColor:  selectedfilter == filter ? Theme.of(context).colorScheme.primary :Color.fromRGBO(230, 230, 230, 1),
                            side: const BorderSide(color:   Color.fromRGBO(230, 230, 230, 1)),
                            label: Text(
                              filter , 
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            padding: EdgeInsets.all(13),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(25)),
                            
                            ),
                        ),
                      );
                    },
                    ),
            ),
          ],
        ),
      ),
      
    );
  }
}