// import 'package:flutter/material.dart';
// import 'package:flutter_may/%20passing%20data%20b/dummypractice.dart';
// import 'package:flutter_may/%20passing%20data%20b/product_details1.dart';
// import 'package:flutter_may/%20passing%20data%20b/product_list.da
// void main(){
//   runApp(MaterialApp(
//     home: productList2(),
//     routes: {
//       "details1" : (context) => product_details1(),
//     },
//   ));
// }
// class productList2 extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Fruits"),),
//       body: ListView(
//         children: Products1.map((e) => ListTile(
//           leading: Image.asset(e["Image"]),
//           title: Text(e["Name"]),
//           onTap: () => gotodetails1(context,e["no"]),
//         )
//         ).toList(),
//       ),
//     );
//
//   }
//
//   void gotodetails1(BuildContext context, e) {
//     Navigator.pushNamed(context, "details1",arguments: no);
//   }
//
// }