import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: SliverEx(),
  ));
}
class SliverEx extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(     //Wrap with Safearea to avoid mobile noutch
       body: CustomScrollView(
         slivers: [
           SliverAppBar(
             floating: false,
             pinned: true,
             title: Text("Sliver Appbar"),
             bottom: AppBar(
               title: Container(
                 width: double.infinity,
                 height: 50,
                 color: Colors.white,
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: 'Search Here',
                     prefixIcon: Icon(Icons.search),
                     suffixIcon: Icon(Icons.camera_alt)
                   ),
                 ),
               ),
             ),
           ),
           SliverList(delegate: SliverChildBuilderDelegate((context, index) => Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(35)
             ),
             height: 80,
             child: Text("User $index",style: TextStyle(fontSize: 80),),
           )))
         ],
       ),
     );

  }

}