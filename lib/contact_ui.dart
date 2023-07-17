import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Contacts(),
  ));
}

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SimpleContactList"),
      ),
      body: ListView(
        children:  [
          // Center(child: Text("Contacts")),
          Card(
            child: ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/img_3.png"),
              ),
              title: const Text("John"),
              subtitle: const Text('9876543210'),
              trailing: IconButton(onPressed: (){}, icon: const Icon(
                Icons.arrow_forward_ios_rounded,size: 15),

              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/img_3.png")),
              title: Text("Ann"),
              subtitle: Text('8765432109'),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 15,
              ),
            ),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/img_3.png")),
            title: Text("Davi"),
            subtitle: Text('7654321098'),
            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/icons/img_1.png")),
            title: Text("Siya"),
            subtitle: Text('6543210987'),
            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/img.png")),
            title: Text("Antonio"),
            subtitle: Text('9765432108'),
            trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/img_4.png")),
              title: Text("Stinil"),
              subtitle: Text('9765432108'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/img.png")),
              title: Text("Tony"),
              subtitle: Text('9765432108'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),),
          ),
          const Card(
            child: ListTile(leading: CircleAvatar(backgroundImage: AssetImage("assets/images/img_1.png")),
              title: Text("Shreya"),
              subtitle: Text('9765432108'),
              trailing: Icon(Icons.arrow_forward_ios_rounded,size: 15,),),
          ),
        ],
      ),
    );
  }
}

