import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Stack", home: StackContent());
  }
}

class StackContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Stack组件")),
        body: Stack(
            // alignment: Alignment.center,
            children: [
              // Align(alignment: Alignment.topRight, child: Text("hello")),
              // Align(alignment: Alignment.bottomLeft, child: Text("我是小明"))
              Positioned(
                  right: 0,
                  top: 20,
                  child: Icon(Icons.add,
                      size: 40, color: Colors.red, semanticLabel: "添加")),
              Positioned(
                  left: 20,
                  bottom: 20,
                  child: Icon(Icons.search,
                      size: 30, color: Colors.blue, semanticLabel: "搜索"))
            ]));
  }
}
