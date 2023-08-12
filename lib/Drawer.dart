import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerEx(),
  ));
}

class DrawerEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
      ),
     // endDrawer: Drawer(), 
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
               // color: Colors.orange
                image: DecorationImage(fit: BoxFit.cover,
                    image: AssetImage(

                    "assets/images/img_5.png"))
              ),
              accountName: Text(
                "Stinil",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text("ABCD@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/img_8.png")),
              otherAccountsPictures: [
                CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_10.png"))
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              trailing: Text("Me"),
            ),
            ListTile(
              leading: Icon(Icons.home),
              trailing: Text("Home"),
            )
          ],
        ),
      ),
    );
  }
}
