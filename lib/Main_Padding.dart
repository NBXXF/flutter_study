import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const/ListData.dart' as ListData;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Padding组件", home: PaddingContent());
  }
}

class PaddingContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: Padding(padding: EdgeInsets.all(10), child: Text("hello"))
    );
  }
}