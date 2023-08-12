import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget{
  final Color? bgcolor;
  final Image? image;
  VoidCallback? onpress;
  Widget? label;

  MyWidget({this.bgcolor,required this.onpress, this.image,required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: ListTile(
        leading: image,
        trailing: label,

        onTap: onpress,
      ),
    );

  }



}