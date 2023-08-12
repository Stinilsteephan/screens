import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: Expandedex(),
  ));
}
class Expandedex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        "Expanded"
      ),),
      body: Container(
        color: Colors.brown,
        child: Column(
          children: [
            SizedBox(height: 80,),
            Expanded(child: Image.asset("assets/images/img_4.png")),
            Expanded(child: Image.asset("assets/images/img_8.png")),
          ],
        ),
      ),
    );
    
  }
  
}