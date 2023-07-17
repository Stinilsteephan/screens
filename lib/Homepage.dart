import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("MyHome"),
        actions: [                            //Actions
          Icon(Icons.camera_alt),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          // SizedBox(width: 10,),
          PopupMenuButton(itemBuilder: (context){
            return[
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("New Group")),
              PopupMenuItem(child: Text("Payment")),
              PopupMenuItem(child: Text("New Broadcast"))
            ];
          })
        ],
      ),
      body: ListView(
        children: [
           Center(child: Text("Fruits")),
          Card(color: Colors.indigo,
            elevation: 5,
            shadowColor: Colors.deepOrange,
            child: ListTile(
                leading: Image.asset("assets/images/img_2.png"),
                title: Text("Watermelon"),
                subtitle: const Row(
                  children: [Text("\$100"), Icon(Icons.done_outlined)],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.shopping_bag)
                  ],
                )),
          ),
          Card(
            child: ListTile(
              leading: Image.asset("assets/images/img_2.png"),
              title: Text("Apple"),
              subtitle: Text("\$150"),
              trailing: Wrap(children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_bag),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite))
              ]), //wrap
            ),
          ),
           Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/img_2.png")),
              title: Text("Strawberry"),
              subtitle: Text("\$200"),
              trailing: Icon(Icons.shopping_bag),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/img_2.png")),
            title: Text("Orange"),
            subtitle: Text("\$250"),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag)),
          )
        ],
      ),
    );
  }
}
