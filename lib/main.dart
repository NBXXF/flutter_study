import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './const/ListData.dart' as ListData;
import './tabs/HomeTab.dart';
import './tabs/NewsTab.dart';
import './tabs/MineTab.dart';
import './chat/ChatRoomPage.dart';
import './const/Routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      /**
       * 去掉右上角的debug图标
       */
      debugShowCheckedModeBanner: false,
      title: "Stack",
      home: HomeContent(),
      initialRoute: "/",
      onGenerateRoute: myOnGenerateRoutes,
      /*    routes: {
          "/chatRoomPage": (BuildContext context) => ChatRoomPage(),
        }*/
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List<Widget> tabWidget = [HomeTab(), NewsTab(), MineTab()];
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("导航"),
        /**
         * 标题居中
         */
        centerTitle: true,
        /**
         * icon button是包裹icon组件 且有点击事件的容器
         */
        leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () => {Navigator.pop(context)},
        ),
        actions: [Icon(Icons.add), Icon(Icons.search)],
      ),
      body: tabWidget[currentTab],
      bottomNavigationBar: BottomNavigationBar(
        /**
         * 选中的颜色
         */
        fixedColor: Colors.red,
        /**
         * 未选中颜色
         */
        unselectedItemColor: Colors.blue,
        /**
         * 当前tab索引
         */
        currentIndex: currentTab,
        onTap: (int index) {
          /**
           * 点击事件更新tab索引
           */
          this.setState(() {
            this.currentTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "首页", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "聊天", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "我的", icon: Icon(Icons.settings))
        ],
      ),
    );
  }
}
