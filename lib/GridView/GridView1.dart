import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView1(),
  ));
}
class GridView1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           mainAxisSpacing: 40,
           crossAxisSpacing: 20,
           crossAxisCount: 3),
    // body: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 50),
      children: List.generate(10, (index) => Card(
        child: Center(
          child: Image.asset("assets/images/img_8.png"),
        ),
      )),

      ),

    );

  }

}