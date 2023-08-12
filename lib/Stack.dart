import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Stack_Ex(),
  ));
}
class Stack_Ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
                image: DecorationImage(image: AssetImage("assets/images/img_10.png"))),
            // color: Colors.red,
          ),
          Positioned(
              left: 20,
              top: 30,
              child: Container(child: Text("My Data",style: TextStyle(fontSize: 30),),)),

          Positioned(
              left: 50,
              top: 100,
              child: Container(child: Text("My stack data",style: TextStyle(fontSize: 20),),))
        ],
      ),
    );

  }

}