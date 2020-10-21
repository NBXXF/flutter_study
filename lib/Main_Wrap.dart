import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './const/ListData.dart' as ListData;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Stack", home: WrapContent());
  }
}

class WrapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wrap组件"),
        ),
        body: Container(
            height: 200,
            child: Wrap(
                direction: Axis.horizontal, //设置主轴方向
                spacing: 30, //主轴间距
                alignment: WrapAlignment.end,//右对齐
                runSpacing: 10,//次轴方向间距
                runAlignment: WrapAlignment.center,//次轴方向的对齐
                children: [
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "微信",
                        style: TextStyle(backgroundColor: Colors.red),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "qq",
                        style: TextStyle(backgroundColor: Colors.yellow),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "雷动三千",
                        style: TextStyle(backgroundColor: Colors.blue),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "华为手机",
                        style: TextStyle(backgroundColor: Colors.green),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "马化腾家族",
                        style: TextStyle(backgroundColor: Colors.deepOrange),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "我",
                        style: TextStyle(backgroundColor: Colors.blueGrey),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "网友",
                        style: TextStyle(backgroundColor: Colors.orange),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "天下第一",
                        style: TextStyle(backgroundColor: Colors.deepPurpleAccent),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "华山论剑",
                        style: TextStyle(backgroundColor: Colors.yellow),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "圣诞欢歌",
                        style: TextStyle(backgroundColor: Colors.red),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "我们是好朋友",
                        style: TextStyle(backgroundColor: Colors.white),
                      )),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "红红火火恍恍惚惚",
                        style: TextStyle(backgroundColor: Colors.red),
                      )),
                ])));
  }
}

