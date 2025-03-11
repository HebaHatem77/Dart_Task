import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhiteSaucePastaScreen(),
    );
  }
}

class WhiteSaucePastaScreen extends StatelessWidget {
  final List ingredients = [
    "images/pasta.png","images/butter.png","images/garlic.png", "images/chicken.png","images/pasta.png","images/butter.png", "images/garlic.png", "images/chicken.png",
  ];

  WhiteSaucePastaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Image.asset("images/main_dish.jpg", fit: BoxFit.cover),
            Image.network("https://img.freepik.com/premium-photo/penne-pasta-carbonara-cream-sauce-with-mushroom_1339-81372.jpg?w=2000", fit: BoxFit.cover),

            Container(
              padding: const EdgeInsets.all(25.0),
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  //const SizedBox(height: 10),
                  Container(height: 15),
                  const Text(
                    "White sauce pasta is also called Bechamel sauce pasta. "
                        "The Bechamel sauce is made from a white roux (butter and flour) and milk "
                        "and is used as a base for many sauces. "
                        "It is often considered one of the mother sauces of French cuisine.",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  //const SizedBox(height: 16),
                  Container(height: 15),

                  const Text(
                    "Ingredients",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: ingredients.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 0.5), borderRadius: BorderRadius.all(Radius.circular(20))),
                        child: Image.asset(ingredients[index], width: 50, height: 50),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
