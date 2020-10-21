import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './const/ListData.dart' as ListData;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Stack", home: ListViewStatefullWidget());
  }
}

class ListViewStatefullWidget extends StatefulWidget {
  @override
  _ListViewStatefullWidgetState createState() =>
      _ListViewStatefullWidgetState();
}

class _ListViewStatefullWidgetState extends State<ListViewStatefullWidget> {
  List<String> list = new List();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Stack(children: [
          ListView.builder(
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  list[index],
                  style: TextStyle(fontSize: 18),
                );
              }),
          Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton(
                onPressed: () => {
                  this.setState(() {
                    this.list.add("数据time:" +
                        new DateTime.now().millisecond.toString());
                  })
                },
                child: Text("add")),
          )
        ]));
  }
}

/**
 * 创建statelessWidget 快捷键 stless
 * 创建statefullWidget  快捷键 stfull
 */
class CountWidget extends StatefulWidget {
  @override
  _CountWidgetState createState() => _CountWidgetState();
}

class _CountWidgetState extends State<CountWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "计数:${this.count}",
            style: TextStyle(decoration: TextDecoration.none),
          ),
          RaisedButton(
              child: Text("+1计数"),
              onPressed: () {
                //点击 更新变量,这里++
                this.setState(() {
                  this.count++;
                });
              })
        ],
      ),
    );
  }
}
