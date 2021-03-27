// import 'package:flutter/cupertino.dart';
import 'package:babalu/views/game/game.dart';
import 'package:babalu/views/today/today.dart';
import 'package:babalu/views/app/app.dart';
import 'package:babalu/views/search/search.dart';

import 'package:flutter/material.dart';


void main()  => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "豆瓣",
      theme: ThemeData(
          primaryColor: Colors.blue,
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent
      ),
      home: MyStackPage(),
    );
  }
}
class MyStackPage extends StatefulWidget {
  @override
  _MyStackPageState createState() => _MyStackPageState();
}

class _MyStackPageState extends State<MyStackPage> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: [
          createItem('today','Today'),
          createItem('huojian','游戏'),
          createItem('ios_apps','App'),
          createItem('sousuo','搜索'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          Today(),
          Game(),
          Apps(),
          Shousuo()
        ],
      ),
    );
  }
}
BottomNavigationBarItem createItem(String iconName, String title) {
  return BottomNavigationBarItem(
      icon: Image.asset("assets/img/tabbar/$iconName.png", width: 30,),
      activeIcon: Image.asset("assets/img/tabbar/${iconName}_active.png", width: 30,),
      title: Text(title)
  );
}