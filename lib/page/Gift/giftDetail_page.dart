import 'package:flutter/material.dart';
import 'package:happy_project/page/Gift/gift_item_page.dart';

class giftDetailPage extends StatefulWidget {
  const giftDetailPage({Key? key}) : super(key: key);
  static const routeName = '/giftdetail';
  @override
  _giftDetailPageState createState() => _giftDetailPageState();
}

class _giftDetailPageState extends State<giftDetailPage> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as giftItemPage;
    return  Scaffold(
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
                    Text("Gift: ${args.name}"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Price: ${args.price} Baht"),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
