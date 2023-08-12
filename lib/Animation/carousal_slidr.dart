import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: CSslider(),
  ));
}

class CSslider extends StatelessWidget {
  var image =[
    "assets/images/img_13.png",
    "assets/images/img_9.png",
    "assets/images/img_7.png",
    "assets/images/img_3.png",
    "assets/images/img_13.png",
    "assets/images/img_9.png",
    "assets/images/img_7.png",
    "assets/images/img_3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(
        items: List.generate(8, (index) => Card(

          child: Image.asset(image[index]),
        )),
          // items: [
          //   Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage("assets/images/img_9.png")),
          //     ),
          //   ),
          //   Container(
          //     child: Lottie.network(
          //         "https://lottie.host/4829b82f-4801-4d3e-8027-e7bfd653e25b/nF7huWcLbt.json"),
          //   ),
          //   Container(
          //     child: Text("Byeeee"),
          //   )
          // ],
          options: CarouselOptions(
              height: double.infinity,
              aspectRatio: 16 / 9,
              viewportFraction: .7,
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayCurve: Curves.elasticIn,
              enlargeCenterPage: true,
              enlargeFactor: .3,
              scrollDirection: Axis.horizontal)),
    );
  }
}
