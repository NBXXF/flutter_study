import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const/ListData.dart' as ListData;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "自定义listView item", home: GridViewContent2());
  }
}

class GridViewContent2 extends StatelessWidget {
  Widget getItemView(BuildContext context, int index) {
    return new Column(children: [
      Image.network(
        ListData.list[index]["url"],
        fit: BoxFit.cover,
      ),
      SizedBox(height: 10),
      Text(ListData.list[index]["title"])
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: GridView.builder(
          itemCount: ListData.list.length,
          itemBuilder: getItemView,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ));
  }
}

class GridViewContent extends StatelessWidget {
  List<Widget> _getChilds() {
    return ListData.list.map((e) {
      return new Column(children: [
        Image.network(
          e["url"],
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10),
        Text(e["title"])
      ]);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GridView.count(
        crossAxisCount: 3,

        padding: EdgeInsets.all(10),
        crossAxisSpacing: 10,
        //副轴方向的间隔,跟scrollDirection相关
        mainAxisSpacing: 10,
        //主轴方向的间隔,跟scrollDirection相关
        children: _getChilds(),
      ),
    );
  }
}
