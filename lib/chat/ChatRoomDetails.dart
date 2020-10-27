import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class ChatRoomDetails extends StatefulWidget {
  @override
  _ChatRoomDetailsState createState() => _ChatRoomDetailsState();

  Map argments;

  ChatRoomDetails({this.argments});
}

class _ChatRoomDetailsState extends State<ChatRoomDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          onPressed: () => {
                Navigator.of(context).pushAndRemoveUntil(
                    new MaterialPageRoute(builder: (context) => HomeContent()),
                        (route)=>route==null)
              },
          child: Text("返回主页面")),
      padding: EdgeInsets.all(20),
    );
  }
}
