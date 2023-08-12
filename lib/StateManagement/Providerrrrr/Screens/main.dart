import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                label: Text("Favourite")),
            Expanded(child: ListView.builder(itemBuilder: (context,index){
              return Card(
                child: ListTile(),
              );
            }))
          ],
        ),
      ),
    );
  }
}
