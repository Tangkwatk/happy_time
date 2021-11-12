import 'package:flutter/material.dart';
import 'package:happy_project/page/Gift/giftDetail_page.dart';

import 'gift_item_page.dart';

class giftPage extends StatefulWidget {
  const giftPage({Key? key}) : super(key: key);
  static const routeName = '/gift';

  @override
  _giftPageState createState() => _giftPageState();
}

var items1 = [
  giftItemPage(
      id: 1, name: "Ice-cream Cake", price: 219, image: "ice_cream_cake.jpg"),
  giftItemPage(
      id: 2, name: "Chocolate Cake", price: 159, image: "choc_cake.jpg"),
  giftItemPage(
      id: 3, name: "Vanilla Cake", price: 159, image: "vanilla-cara.jpg"),
  giftItemPage(id: 4, name: "Big Pig Cake", price: 299, image: "cake1.jpg"),
  giftItemPage(id: 5, name: "Little Pig Cake", price: 299, image: "cake2.jpg"),
  giftItemPage(id: 6, name: "Cartoon Cake", price: 299, image: "cake3.jpg"),
  giftItemPage(id: 7, name: "Coffee Cupcake", price: 99, image: "cupcake.jpg"),
  giftItemPage(id: 8, name: "Star Cupcake", price: 99, image: "cupcake3jpg.jpg"),
];

var items2 = [
  giftItemPage(id: 1, name: "Tree Snowball", price: 149, image: "snow1.jpg"),
  giftItemPage(id: 2, name: "Pink Tree Snowball", price: 199, image: "snow2.png"),
  giftItemPage(id: 3, name: "Rabbit Snowball", price: 199, image: "snow3.jpg"),
  giftItemPage(id: 4, name: " Bear Snowball ", price: 199, image: "snow4.jpg"),
  giftItemPage(id: 5, name: "House Snowball", price: 299, image: "snow5.jpg"),
  giftItemPage(id: 6, name: "Frozen Snowball", price: 299, image: "snow6.jpg"),



];

var items3 = [
  giftItemPage(id: 1, name: "Onikuma K9", price: 659, image: "headset.png"),
  giftItemPage(id: 2, name: "Fantech HG15", price: 890, image: "headset2.jpg"),
  giftItemPage(id: 3, name: "   In ear   ", price: 199, image: "inear1.jpg"),
  giftItemPage(id: 4, name: "Gaming headset", price: 179, image: "in ear2.jpg"),
  giftItemPage(id: 5, name: "   Mouse   ", price: 499, image: "mouse.jpg"),
  giftItemPage(id: 6, name: " Moon light ", price: 99, image: "light.jpg"),
  giftItemPage(id: 7, name: " Tree light ", price: 215, image: "light2.jpg"),

];

var items4 = [
  giftItemPage(id: 1, name: "Children dress", price: 199, image: "dress.jpg"),
  giftItemPage(id: 2, name: "Children set", price: 159, image: "set.jpg"),
  giftItemPage(id: 3, name: "Planet bracelet", price: 59, image: "bracelet.jpg"),
  giftItemPage(id: 4, name: "Stone bracelet", price: 79, image: "bracelet2.jpg"),
  giftItemPage(id: 5, name: "Cartoon necklace", price: 99, image: "necklace1.jpg"),
  giftItemPage(id: 6, name: "Flower necklace", price: 99, image: "necklace2.jpg"),
  giftItemPage(id: 7, name: "Pink cat clock", price: 79, image: "clock.jpg"),
  giftItemPage(id: 8, name: "Purple bear clock", price: 79, image: "clock2.jpg"),
  giftItemPage(id: 9, name: "Green flower clock", price: 79, image: "clock3.jpg"),

];

bool isVisible1 = true;
bool isVisible2 = true;
bool isVisible3 = true;
bool isVisible4 = true;

class _giftPageState extends State<giftPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gift"),
        backgroundColor: Color(0xFFFFB7C3),
      ),
      body: Container(
        color: Color(0xFFFFE3E2),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Card(
                  color: Color(0xFFFFFFF3),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '  Cake          ',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                          TextButton(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            onPressed: () =>
                                setState(() => isVisible1 = !isVisible1),
                          ),
                        ],
                      ),
                      if (isVisible1)
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items1.length,
                              itemBuilder: (BuildContext context, int index) {
                                giftItemPage item = items1[index];
                                return Card(
                                  margin: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      print(item);
                                      Navigator.pushNamed(
                                        context,
                                        giftDetailPage.routeName,
                                        arguments: item,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/${item.image}",
                                            width: 90.0,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(
                                            item.name,
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xFFFFFFF3),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '  Snowball          ',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                          TextButton(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            onPressed: () =>
                                setState(() => isVisible2 = !isVisible2),
                          ),
                        ],
                      ),
                      if (isVisible2)
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items2.length,
                              itemBuilder: (BuildContext context, int index) {
                                giftItemPage item = items2[index];
                                return Card(
                                  margin: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      print(item);
                                      Navigator.pushNamed(
                                        context,
                                        giftDetailPage.routeName,
                                        arguments: item,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/${item.image}",
                                            width: 90.0,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(
                                            item.name,
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xFFFFFFF3),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '   Electronic          ',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                          TextButton(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            onPressed: () =>
                                setState(() => isVisible3 = !isVisible3),
                          ),
                        ],
                      ),
                      if (isVisible3)
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items3.length,
                              itemBuilder: (BuildContext context, int index) {
                                giftItemPage item = items3[index];
                                return Card(
                                  margin: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      print(item);
                                      Navigator.pushNamed(
                                        context,
                                        giftDetailPage.routeName,
                                        arguments: item,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/${item.image}",
                                            width: 90.0,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(
                                            item.name,
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xFFFFFFF3),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '  Item          ',
                            style:
                                TextStyle(fontSize: 20.0, color: Colors.black),
                          ),
                          TextButton(
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.black,
                            ),
                            onPressed: () =>
                                setState(() => isVisible4 = !isVisible4,
                          ),
                          ),
                        ],
                      ),
                      if (isVisible4)
                        SingleChildScrollView(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: items4.length,
                              itemBuilder: (BuildContext context, int index) {
                                giftItemPage item = items4[index];
                                return Card(
                                  margin: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    onTap: () {
                                      print(item);
                                      Navigator.pushNamed(
                                        context,
                                        giftDetailPage.routeName,
                                        arguments: item,
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "assets/images/${item.image}",
                                            width: 90.0,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                          ),
                                          SizedBox(width: 8.0),
                                          Text(
                                            item.name,
                                            style: TextStyle(fontSize: 20.0),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
