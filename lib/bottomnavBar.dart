 import 'package:flutter/material.dart';
import 'package:flutter_may/Homepage.dart';
import 'package:flutter_may/ListView_with_Listview.generate.dart';
import 'package:flutter_may/first_class.dart';
import 'package:flutter_may/login_page.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int index = 0;
  var screens = [
    Homepage(),
    LoginPage(),
    Firstpage(),
    ListView2()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Bar"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex)
        {setState(() {
          var index = tapindex;
        });
        },
        backgroundColor: Colors.green,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.contact_mail),label: "Mail"),
          BottomNavigationBarItem(icon: Icon(Icons.add_a_photo_outlined),label: "Photo")
        ],
      ),
      body: screens[index],
    );
  }
}
