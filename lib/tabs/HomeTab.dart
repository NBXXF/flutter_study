import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(child:Row(
      children: [RaisedButton(onPressed: ()=>{
        Navigator.pushNamed(context, "/tabBar")
      },child: Text("TabBar"),)],
    ));
  }
}
