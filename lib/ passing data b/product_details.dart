import 'package:flutter/material.dart';
import 'dummy_data.dart';


class Product_details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final Product = Products.firstWhere((mapfromlist) => mapfromlist["id"] == id);

    //comparing id from previous page with id from list and store the value from that id
    //to product which is Map<String dynamic>

    return Scaffold(
      appBar: AppBar(
        title: Text("My Single Product"),
      ),
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Product["image"],
                height: 200,
                width: 200,
              ),
              Text(Product["name"],
              style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30
              ),),
              Text(Product["description"]),
              Text("${Product["price"]}",style: TextStyle(fontSize: 20),),
              Text("${Product['rating']}",style: TextStyle(fontSize: 10),)
            ],
          ),
        ),
      ),

    );
  }

}