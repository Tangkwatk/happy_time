import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happy_project/page/Package/packageItem_page.dart';

class packageDetailPage extends StatefulWidget {
  const packageDetailPage({Key? key}) : super(key: key);
  static const routeName = '/detail';
  @override
  _packageDetailPageState createState() => _packageDetailPageState();
}

class _packageDetailPageState extends State<packageDetailPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as packageItem;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.name),
        backgroundColor: Color(0xFFFFB7C3),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          color: Color(0xFFFFFFF3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/${args.image}",
                    height: 200.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Package: ${args.name}"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Price: ${args.price} Baht"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Detail: ${args.detail}'),
                  ],
                ),
              ),
              ElevatedButton(
                child: Text('Select'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFB7C3)),
                ),
                onPressed: () {
                  _showMaterialDialog("Finished", "You have already selected.");
                },
              ),


            ],
          ),
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

