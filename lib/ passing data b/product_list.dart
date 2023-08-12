import 'package:flutter/material.dart';
import 'package:flutter_may/%20passing%20data%20b/dummy_data.dart';
import 'package:flutter_may/%20passing%20data%20b/product_details.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductList(),
    routes: {
      //named routes
      "details": (context) => Product_details(),
    },
  ));
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Products"),
      ),
      body: ListView(
        //  e        = each single map in the list
        //  list.map = iterate all the map in the list as
        //  .toList  = used to convert the map values to list
        padding: EdgeInsets.all(15),
        children: Products.map((e) => ListTile(
              leading: Image.asset(e["image"]),
              title: Text(e["name"]),
              onTap: () => gotodetails(context, e["id"]),
            )).toList(),
      ),
    );
  }

  void gotodetails(BuildContext context, id) {
    // id = e[id] --id of item that we tap
    Navigator.pushNamed(context, "details", arguments: id);
  }
}
