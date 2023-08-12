import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Expansionn(),
  ));
}

class Expansionn extends StatelessWidget {
  var colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.pink,
    Colors.blue
  ];
  var name = ["Red", "Green", "Yellow", "Pink", "Blue"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
      ),
      body: Container(
        decoration:
            BoxDecoration(color: Colors.green, shape: BoxShape.rectangle),
        //     image: DecorationImage(image: AssetImage("assets/images/img_9.png"))
        // ),
        child: ExpansionTile(
          trailing: Text("Click Here"),
          title: Text("Colors"),
          subtitle: Text("List of Colors"),
          children: List.generate(
              5,
              (index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: colors[index],
                    ),
                    title: Text(name[index]),
                  )),
        ),
      ),
    );
  }
}
