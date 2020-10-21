import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Stack", home: AspectRationContent());
  }
}

class AspectRationContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("AspectRation组件")),
        body: AspectRatio(
          aspectRatio: 2,
          child: Container(
            color: Colors.red,
            child: Text("宽高比:2"),
          ),
        ));
  }
}
