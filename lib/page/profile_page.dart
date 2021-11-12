import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  const profilePage({Key? key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: Container(
              color: Color(0xFFFFFFF3),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(90.0),
                        child: Container(
                          width: 180.0,
                          height: 180.0,
                          child: Image.asset('assets/images/profile.png'),
                        )),
                    Text("piggy"),
                    Text("piggy@gmail.com"),
                  ],
                ),
              ),

            ),
    );
  }
}
