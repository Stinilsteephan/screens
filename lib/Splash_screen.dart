import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FreshFoods(),
  ));
}

class FreshFoods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/img_1.png")),gradient: LinearGradient(colors: [Colors.orange,
      Colors.yellow,Colors.redAccent],begin: Alignment.bottomLeft,end: Alignment.topRight)
      ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.emoji_food_beverage,size: 100,),
               Text("Fresh Foods",style: GoogleFonts.fasthand(fontSize: 25,color: Colors.yellow)),
               Text("Tasty & Healthy",style: TextStyle(fontSize: 15,color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
