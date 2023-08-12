import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_may/Assignments/FFZ_Gridview.dart';
import 'package:google_fonts/google_fonts.dart';

import 'StoreItemAssign.dart';

void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Farmers_Fresh(),
  ));
}

class Farmers_Fresh extends StatefulWidget {
  @override
  State<Farmers_Fresh> createState() => _Farmers_FreshState();
}

class _Farmers_FreshState extends State<Farmers_Fresh> {
  int index = 0;
  var List1 = ["VEGETABLES", "FRUITS", "EXOTIC", "FRESH CUTS", "PACKED"];

  var carousel_image = [
    "assets/FFZ/img.png",
    "assets/FFZ/img_1.png",
    "assets/FFZ/img_2.png"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          currentIndex: index,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: "CART"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "ACCOUNT"),
          ]),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                  ),
                  Text("Kochi"),
                  // Icon(Icons.arrow_drop_down)
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                ],
              )
            ],
            backgroundColor: Colors.green.shade600,
            floating: false,
            pinned: true,
            title: Text("Farmers Fresh Zone", style: GoogleFonts.kanit()),
            bottom: AppBar(
              backgroundColor: Colors.green.shade600,
              elevation: 0,
              title: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7)),
                height: 30,
                width: double.infinity,
                //color: Colors.white,
                child: const TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        size: 20,
                      ),
                      hintText: "Search for Vegetables,Fruits,..."),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.greenAccent,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        List1[index],
                      ),
                    ),
                  );
                }),
              ),
            ),
            CarouselSlider.builder(
                itemCount: 3,
                itemBuilder: (context, index, realindex) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(carousel_image[index]),
                            fit: BoxFit.fill)),
                  );
                },
                options: CarouselOptions(
                    aspectRatio: 16 / 7,
                    autoPlay: true,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    pageSnapping: true)),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.timer_sharp,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("30 MINS POLICY")
                      ],
                    ),
                    // SizedBox(width: 20,),
                    Column(
                      children: [
                        Icon(
                          Icons.phone_iphone_sharp,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("TRACEABILITY")
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.man,
                          color: Colors.green,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("LOCAL SOURCING")
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Shop By Category", style: TextStyle(fontSize: 25)),
            ),
            categoriesgrid(),
            Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/FFZ/img_4.png"),
                      fit: BoxFit.fill)),
            ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Best Selling Products",style: TextStyle(fontSize: 20,color: Colors.black),),
                ),
                StoreItem(),
          ])),
        ],
      ),
    );
  }
}
