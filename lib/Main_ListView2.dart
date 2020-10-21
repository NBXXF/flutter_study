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
  List list = ListData.list;

  Widget _getListItem(BuildContext context, int index) {
    return new ListTile(
        title: new Text(list[index]["title"]),
        contentPadding: EdgeInsets.all(10),
        leading: Image.network(
          list[index]["url"],
          height: 100,
          fit: BoxFit.cover,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView.builder(
            itemCount: list.length, itemBuilder: _getListItem));
  }
}
