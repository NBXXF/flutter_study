import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../chat/ChatRoomPage.dart';

class NewsTab extends StatefulWidget {
  @override
  _NewsTabState createState() => _NewsTabState();
}

class _NewsTabState extends State<NewsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () => {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (BuildContext context) {
              //   return ChatRoomPage(id: "001");
              // }))

             // Navigator.pushNamed(context, '/chatRoomPage')
              Navigator.pushNamed(context, '/chatRoomPage',arguments: {
                "id":"100",
              })
            },
              child: Text("聊天室1"),
            ),
            RaisedButton(
              onPressed: () =>
              {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ChatRoomPage(id: "003");
                }))
              },
              child: Text("聊天室2"),
            ),
            RaisedButton(
              onPressed: () =>
              {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return ChatRoomPage(id: "002");
                }))
              },
              child: Text("聊天室3"),
            )
          ],
        ));
  }
}
