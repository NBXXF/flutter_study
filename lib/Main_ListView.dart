import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'const/ListData.dart' as ListData;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new MaterialApp(title: "首页", home: HomeContent());
    //return new MaterialApp(title: "首页", home: ImageContent());
    //return new MaterialApp(title: "首页", home: CircleImageContent());
    //  return new MaterialApp(title: "首页", home: ClipOvalContent());
    // return new MaterialApp(title: "首页", home: LocalImageContent());
    // return new MaterialApp(title: "listView", home: ListViewListTileContent());
    return new MaterialApp(
        title: "自定义listView item", home: CustomListViewContent());
  }
}

class CustomListViewContent extends StatelessWidget {
  List<Widget> _getListItem() {
    var map = ListData.list.map((e) {
      return ListTile(
          contentPadding: EdgeInsets.all(20),
          leading: Image.network(
            e["url"],
            width: 100,
            fit: BoxFit.cover,
          ),
          title: Text(e["title"]));
    });
    return map.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: new ListView(children: _getListItem()));
  }
}
