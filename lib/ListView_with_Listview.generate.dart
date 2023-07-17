import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: ListView2(),
  ));
}
class ListView2 extends StatelessWidget{
  var Names =[
    "Stinil",
    "Ghosh",
    "Lathif",
    "Ann",
    "Rithu",
  ];

  var images = [
    'assets/images/img_12.png',
    'assets/images/img_11.png',
    'assets/images/img_10.png',
    'assets/images/img_9.png',
     'assets/images/img_8.png',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView 2"),
      ),
      body: ListView(
        children: List.generate(4, (index) =>

            ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
          title: Text(Names[index]),
          subtitle: Text("78965412365"),
          trailing: Text('11:30 pm'),
        )),
      ),
    );

  }

}