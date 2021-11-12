import 'package:flutter/material.dart';
import 'package:happy_project/page/Package/packageDetail_page.dart';
import 'package:happy_project/page/Package/packageItem_page.dart';

class packagePage extends StatefulWidget {
  const packagePage({Key? key}) : super(key: key);
  static const routeName = '/package';

  @override
  _packagePageState createState() => _packagePageState();
}

class _packagePageState extends State<packagePage> {
  var items = [
    packageItem(id: 1, name: "Parent package", price: 399, image: "parent.png",detail: "Select Surprise and 4 Gifts"),
    packageItem(id: 2, name: "Child package", price: 199, image: "child.jpg",detail: "Select Surprise and 2 Gifts"),
    packageItem(id: 3, name: "Friend package", price: 199, image: "friend.jpg",detail: "Select Surprise and 2 Gifts"),
    packageItem(id: 4, name: "Boyfriend package", price: 299, image: "boyfriend.jpg",detail: "Select Surprise and 3 Gifts"),
    packageItem(id: 5, name: "Girlfriend package", price: 299, image: "girl.jpg",detail: "Select Surprise and 3 Gifts"),
    packageItem(id: 6, name: "Family package", price: 199, image: "fam.jpg",detail: "Select Surprise and 3 Gifts"),
    packageItem(id: 7, name: "Special package", price: 399, image: "images.png",detail: "Select Surprise and 5 Gifts"),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package'),
        backgroundColor: Color(0xFFFFB7C3),
      ),
      body: Container(
        color: Color(0xFFFFFFF3),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            packageItem item = items[index];
            return Card(
              margin: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  print(item);
                  Navigator.pushNamed(
                    context,
                    packageDetailPage.routeName,
                    arguments: item,
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Image.asset("assets/images/${item.image}",
                        width : 60.0,
                        height: 60.0,
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
    );
  }
}
