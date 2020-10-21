import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "RowColumnExpand组件", home: RowColumnExpandContent());
  }
}

class RowColumnExpandContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Column(children: [
          Image.network(
              "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1603251542&di=74a1c850422f31af7b82e6adf1fa4469&src=http://img.tupianzj.com/uploads/Bizhi/mn1_1366.jpg"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                      height: 180,
                      child: Image.network(
                        "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603261687687&di=86b18e2e5341e8ddc75a41701d0d2d9b&imgtype=0&src=http%3A%2F%2Fwww.wfuyu.com%2Fuploadfile%2Fcj%2F20141130%2Fcd70ec786aa669ee4d472073cf52c76a.jpg",
                        fit: BoxFit.cover,
                      ))),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                      height: 180,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(
                                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3605135345,833828983&fm=26&gp=0.jpg"),
                            SizedBox(
                              height: 10,
                            ),
                            Image.network(
                                "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3605135345,833828983&fm=26&gp=0.jpg")
                          ])))
            ],
          )
        ]));
  }
}
