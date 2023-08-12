import 'package:flutter/material.dart';
import 'package:flutter_may/GridView/MyWidget(Flutter%20refractoring).dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(
    home: StagView(),
  ));
}
class StagView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(crossAxisCount: 5,
        children: [
          StaggeredGridTile.count(crossAxisCellCount: 3, mainAxisCellCount: 2, child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/img_9.png"))
            ),
          )),
          StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 2, child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/img_9.png"))
            ),
          )),

          ///StaggeredGridView using Flutter refracting(My Widget)
          StaggeredGridTile.count(crossAxisCellCount: 2, mainAxisCellCount: 2, child: MyWidget(onpress: (){

          }, label: Text("Hellooo"),
            image: Image.asset("assets/images/img_11.png"),bgcolor: Colors.red,
          ))
        ],),),
      
      );
    
    
  
  }
}