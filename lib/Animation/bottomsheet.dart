

///to perform event of gestures we use "Gesture detector/ Inkwell"(tap,click)

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(
    home: BottomSheet(),
  ));
}
class BottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
            onDoubleTap: (){
              showsheet(context);
            },
            child: Image.asset("assets/images/img_11.png")),
      ),
    );

  }
  void showsheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        child: Column(
          children: [
            ListTile(
              //leading: Icon(Icons.share),
              leading: FaIcon(FontAwesomeIcons.whatsapp),
              trailing: Text("Share"),
            ),
            ListTile(
              //leading: Icon(Icons.copy),
              leading: FaIcon(FontAwesomeIcons.instagram),
              onTap: (){
              },
              trailing: Text("Copy"),
            )
          ],
        ),

      );
    });
  }

}