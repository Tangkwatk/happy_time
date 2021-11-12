import 'package:flutter/material.dart';
import 'package:happy_project/page/profile_page.dart';
import 'package:happy_project/page/recommend_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  static const routeName = '/home';
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var _selectIndex = 0;
  final _pageDataList = [
    {
      'icon': Icons.recommend,
      'title': 'Recommend',
      'page' : RecommendPage(),
    },
    {
      'icon': Icons.person,
      'title': 'Profile',
      'page' : profilePage(),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pageDataList[_selectIndex]['title'] as String),
        backgroundColor: Color(0xFFFFB7C3),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFE4DDEF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      child: Image.asset('assets/images/profile.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'piggy',
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  ),
                  Text('piggy@gmail.com'),
                ],
              ),
            ),
            for(var item in _pageDataList)
              ListTile(
                title: Row(
                  children: [
                    Icon(
                      item['icon'] as IconData,
                        color: item == _pageDataList[_selectIndex] ? Color(0xFF7878FA) : null,

                    ),
                    SizedBox(width: 8.0),
                    Text(item['title'] as String,
                      style: TextStyle(color: item == _pageDataList[_selectIndex] ? Color(0xFF7878FA) : null,),),

                  ],
                ),
                onTap: (){
                  setState(() {
                    _selectIndex = _pageDataList.indexWhere((element) => item == element);
                  });
                  Navigator.of(context).pop();
                },
                selected: item == _pageDataList[_selectIndex],
              )
          ],
        ),
      ),
      body: Container(
        child: _pageDataList[_selectIndex]['page'] as Widget,
      ),
    );
  }
}
