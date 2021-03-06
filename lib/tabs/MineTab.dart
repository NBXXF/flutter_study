import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineTab extends StatefulWidget {
  @override
  _MineTabState createState() => _MineTabState();
}

class _MineTabState extends State<MineTab> {
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
              tabs: tabs,
              isScrollable: true,
            ),
            bottom: TabBar(
              tabs: tabs,
              isScrollable: true,
            ),
          ),
          body: TabBarView(
            children: tabs.map((Tab tab) {
              return Text(tab.text);
            }).toList(),
          ),
        ));
    return Container(child: Text("我的"));
  }
}
