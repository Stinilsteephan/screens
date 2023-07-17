import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: listview3(),
  ));
}

class listview3 extends StatelessWidget {
  var names = ["anu", "anju", "hazel"];
  var images = [
    "assets/images/img_1.png",
    "assets/images/img_7.png",
    "assets/images/img_12.png"
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview Builder"),
      ),
      body: SingleChildScrollView(     //to scroll the column
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
                title: Text(names[index]),
                subtitle: Text("how r u?"),
                trailing: Text("11.30"),
              ));
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
    );
  }
}
