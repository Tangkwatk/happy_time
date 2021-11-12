
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_project/page/Gift/gift_page.dart';
import 'package:happy_project/page/Package/package_page.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({Key? key}) : super(key: key);

  @override
  _RecommendPageState createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> {
  bool isVisible1 = true;
  bool isVisible2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFFFFFF3),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        child: Text('PACKAGE'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, packagePage.routeName);
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                        ),
                        child: Text('GIFT'),
                        onPressed: () {
                          Navigator.pushNamed(context, giftPage.routeName);
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Package Recommended'),
                    TextButton(
                      child: Icon(Icons.arrow_drop_down,color: Colors.black),
                      onPressed: () => setState(() => isVisible1 = !isVisible1),
                    ),
                  ],
                ),
                if (isVisible1)
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/images/images.png'),
                              ),
                              ElevatedButton(
                                child: Text('Detail'),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                ),
                                onPressed: () {
                                  _showMaterialDialog("Detail", "Spacial package 399 Baht");
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/images/fam.jpg'),
                              ),
                              ElevatedButton(
                                child: Text('Detail'),
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                ),
                                onPressed: () {
                                  _showMaterialDialog("Detail", "Family package 199 Baht");
                                },
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8.0),
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white60,
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Image.asset('assets/images/friend.jpg'),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                ),
                                child: Text('Detail'),
                                onPressed: () {
                                  _showMaterialDialog("Detail", "Friend package 199 Baht");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Gift Recommended'),
                      TextButton(
                        child: Icon(Icons.arrow_drop_down,color: Colors.black),
                        onPressed: () =>
                            setState(() => isVisible2 = !isVisible2),
                      ),
                    ],
                  ),
                  if (isVisible2)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                      Image.asset('assets/images/cake1.jpg'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Pig Cake 299 Baht");
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                      Image.asset('assets/images/cupcake3jpg.jpg'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Star Cupcake 99 Baht");
                                  },
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                      Image.asset('assets/images/choc_cake.jpg'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Chocolate Cake 159 Baht");
                                  },
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                  Image.asset('assets/images/snow2.png'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Pink Tree Snowball 199 Baht");
                                  },
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                  Image.asset('assets/images/headset.png'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Onikuma K9 659 Baht");
                                  },
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                  Image.asset('assets/images/light.jpg'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Moon light 99 Baht");
                                  },
                                ),

                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 160,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child:
                                  Image.asset('assets/images/dress.jpg'),
                                ),
                                ElevatedButton(
                                  child: Text('Detail'),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                                  ),
                                  onPressed: () {
                                    _showMaterialDialog("Detail", "Child Dress 199 Baht");
                                  },
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void _showMaterialDialog(String title, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            // ปุ่ม OK ใน dialog
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                // ปิด dialog
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
