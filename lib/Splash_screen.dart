import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MaterialApp(
    home: FreshFoods(),
  ));
}
class FreshFoods extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(
          fit: BoxFit.fill,
            image: AssetImage("assets/images/img_14.png"))),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Icon(Icons.emoji_food_beverage,size: 100,),
            Column(
              children: [
                Text("Fresh Foods",style: GoogleFonts.lobster(),),

                Text("Taste & Healthy",style: GoogleFonts.oxygen(),)
              ],
            )
          ],),
        ),
      ),

    );

  }

}