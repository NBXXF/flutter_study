import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './const/ListData.dart' as ListData;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(title: "Stack", home: ListCardContent());
  }
}

class ListCardContent extends StatelessWidget {
  List list = ListData.list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            //自定义原角度
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))),
            margin: EdgeInsets.all(10),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(list[index]["url"],
                            fit: BoxFit.cover)),
                    SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Row(
                      children: [
                        ClipOval(
                            child: Image.network(
                              list[index]["url"],
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover,
                            )),
                        CircleAvatar(
                          backgroundImage: NetworkImage(list[index]["url"]),
                        ),
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Text(list[index]["title"])
                      ],
                    )
                  ],
                )),
          );
        });
  }
}
