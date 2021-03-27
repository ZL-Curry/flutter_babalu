import 'package:flutter/material.dart';
import 'package:babalu/newwork/http_request.dart';
class Apps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
      ),
      body: AppBody()
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  void initState() {
    super.initState();
    HttpRequest.request('https://douban.uieee.com/v2/movie/top250?start=0&count=20').then((res){
      print(res);
    }).catchError((err){
      print(err);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text('App', style: TextStyle(fontSize: 50),),
    );
  }
}

