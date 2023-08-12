import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView2(),
  ));
}

class GridView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: 20,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 30),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.orangeAccent,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 20,
                  ),
                  Text(
                    "USER $index",
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
