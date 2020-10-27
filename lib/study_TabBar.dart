import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();

  Map argments;

  TabBarPage({this.argments});
}

class _TabBarPageState extends State<TabBarPage> {
  List<Tab> tabs = [
    Tab(text: "中国"),
    Tab(text: "推荐"),
    Tab(text: "食品"),
    Tab(text: "百货"),
    Tab(text: "手机"),
    Tab(text: "男装"),
    Tab(text: "内衣"),
    Tab(text: "电器"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              isScrollable: true,
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab e) {
              return Text(e.text);
            }).toList(),
          ),
        ));
  }
}
