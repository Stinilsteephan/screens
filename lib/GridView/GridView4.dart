import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: GridView4(),
  ));
}
class GridView4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.custom(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3), childrenDelegate: SliverChildBuilderDelegate
            ((context, index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(child: Center(child: Text("Hello"))),
     )),),);
  }}