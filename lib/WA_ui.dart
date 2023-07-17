import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsApp(),
  ));
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("WhatsApp"),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 10,
            )
          ],
        ),
        body: ListView(
          children: [
            const Card(
              child: ListTile(
                leading: Icon(Icons.archive),
                title: Text("Archieved"),
                trailing: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.green,
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_8.png")),
                title: Text('+91 9876543210(You)'),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.done_all_rounded,
                      color: Colors.blueAccent,
                      size: 20,
                    ),
                    Text("Paytm"),
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('28/06/2023'),
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      "assets/icons/img_4.png",
                      height: 18,
                      width: 18,
                      color: Colors.grey,
                    )
                    // Icon(Icons.pin_end,size: 20,)
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_6.png")),
                title: Text("Shefin OG"),
                subtitle: Text("machane"),
                trailing: Text('9:50 pm'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.people,
                  size: 45,
                ),
                title: Text(
                  "Flutter 2023 May",
                ),
                subtitle: Row(
                  children: [
                    Text("Miss:"),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.video_call),
                    Text("Video")
                  ],
                ),
                trailing: Column(
                  children: [
                    Text('8:41 pm'),
                    SizedBox(
                      height: 8,
                    ),
                    Icon(
                      Icons.looks_one,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_7.png")),
                title: Text("Sandra"),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all_rounded,
                      size: 20,
                      color: Colors.blueAccent,
                    ),
                    Icon(
                      Icons.image,
                      size: 20,
                    ),
                    Text("Photo"),
                  ],
                ),
                trailing: Text('8:20 pm'),
                // Icon(Icons.done_all_rounded,color: Colors.blueAccent,size: 20,),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_9.png")),
                title: Text('+91 8765432109'),
                subtitle: Text("Hey"),
                trailing: Text('7:50 pm'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 45,
                ),
                title: Text("Sijil"),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.mic,
                      color: Colors.blueAccent,
                    ),
                    Text("0:22"),
                  ],
                ),
                trailing: Text('7:01 pm'),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_11.png")),
                title: Text("Mariya"),
                subtitle: Text("https://www.youtube.be/ltBrJIKIPD8"),
                trailing: Text("4:20 pm"),
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img_12.png")),
                title: Text("Rithu"),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.done_all_rounded,
                      size: 20,
                    ),
                    Text("bro???"),
                  ],
                ),
                trailing: Text('3:50 pm'),
              ),
            )
          ],
        ));
  }
}
