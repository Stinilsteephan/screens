import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        leading: const Icon(Icons.account_circle_rounded),
        centerTitle: true,
        title: const Text("NEW APP"),
      ),
      body: const Center(
          child: Icon(
        Icons.safety_divider,
        size: 99,
        color: Colors.black,
      )),
    );
  }
}
