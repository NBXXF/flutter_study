import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    return new MaterialApp(title: "自定义listView item",home: CustomListViewContent());
  }
}

class CustomListViewContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        reverse: true,
        padding: EdgeInsets.all(10),
        children: [
          Image.network(
              "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1365563952,1327431768&fm=26&gp=0.jpg"),
          Container(height: 10),//占位,起分割作用
          Image.network(
              "https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1930662946,3376692344&fm=26&gp=0.jpg"),
          Container(height: 10),
          Image.network(
              "https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3353166494,2700282750&fm=26&gp=0.jpg")
        ],
      ),
    );
  }
}

class ListViewListTileContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new ListView(children: <Widget>[
      ListTile(
          title: Text("title"),
          subtitle: Text("subTitle"),
          leading: Icon(
            Icons.inbox,
            size: 40,
          )),
      ListTile(
          title: Text("title1"),
          subtitle: Text("subTitle1"),
          leading: Icon(
            Icons.search,
            size: 20,
          )),
      ListTile(
          title: Text("title2"),
          subtitle: Text("subTitle2"),
          leading: Icon(
            Icons.tab,
            size: 30,
          )),
      ListTile(
          title: Text("title3"),
          subtitle: Text("subTitle3"),
          leading: Icon(Icons.sanitizer)),
      ListTile(
          title: Text("title4"),
          subtitle: Text("subTitle4"),
          leading: Icon(Icons.inbox))
    ]));
  }
}

class LocalImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      width: 200,
      height: 300,
      child: Image.asset("images/timg.jpg"),
    ));
  }
}

class ClipOvalContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
            width: 200,
            height: 200,
            child: new ClipOval(
                child: Image.network(
              "http://dwz.date/cSNt",
              fit: BoxFit.cover,
            ))));
  }
}

class CircleImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                            "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1603174658176&di=752704c8a2c730ec183014c70ab21397&imgtype=0&src=http%3A%2F%2Fattach.bbs.miui.com%2Fforum%2F201308%2F23%2F220651x9b0h4kru904ozre.jpg")
                        .image))));
  }
}

class ImageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      decoration: BoxDecoration(color: Colors.yellow),
      width: 200,
      height: 200,
      padding: EdgeInsets.all(20),
      child: new Image.network(
        "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3022430276,1439132295&fm=26&gp=0.jpg",
        alignment: Alignment.bottomRight,
        color: Colors.yellow, //类似Android:tint着色
        colorBlendMode: BlendMode.screen,
        fit: BoxFit.cover,
      ),
    ));
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("hello")),
        body: Center(
            child: new Container(
                child: new Text(
                  "welcome to beigin,或胡姬花规定和规范的后果符合规定和规范化规定",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 34,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.red,
                      letterSpacing: 2.0,
                      decorationStyle: TextDecorationStyle.dotted),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                width: 300,
                //容器宽度
                height: 300,
                //容器高度
                padding: EdgeInsets.all(10),
                //控制子元素的位置,如居中
                alignment: Alignment.bottomCenter,
                //对容器进行变换,如位移
                transform: Matrix4.translationValues(50, 0, 0),
                //设置边距；单独设置某个边: EdgeInsets.fromLTRB(0,10,0,0)
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(8)), //边框圆角
                    color: Colors.yellow, //容器背景
                    border: Border.all(
                        color: Colors.blue, width: 2))))); //边框大小和颜色设置
  }
}
