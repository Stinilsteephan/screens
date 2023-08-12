import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main(){
  runApp(MaterialApp(
    home: Clipper_Ex(),
  ));
}
class Clipper_Ex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(centerTitle: true,title: Text("Clippers"),),
      body: ListView(
        children: [
          ClipRect(
              child: Image.network("https://images.unsplash.com/photo-1595760780346-f972eb49709f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),
          
          ClipRRect(
            borderRadius: BorderRadius.circular(350),
            child: Image.network("https://images.unsplash.com/photo-1519699047748-de8e457a634e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
          ),
          ClipOval(child: Image.network("https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60%27"),
          ),
          ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              height: 120,
              color: Colors.red,
              child: Text("Clippers"),
            ),
          )
        ],
      ),
    );
    
  }
  
}