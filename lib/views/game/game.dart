import 'package:flutter/material.dart';

class Game extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('游戏'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.people),title: Text('标题'),),
          ListTile(leading: Icon(Icons.people),title: Text('标题'),),
          ListTile(leading: Icon(Icons.people),title: Text('标题'),),
          ListTile(leading: Icon(Icons.people),title: Text('标题'),),
          ListTile(leading: Icon(Icons.people),title: Text('标题'),),
        ],
      )
    );
  }
}
