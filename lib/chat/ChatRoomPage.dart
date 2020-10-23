import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatRoomPage extends StatelessWidget {
  String id;
  Map argments;

  ChatRoomPage({this.id = "000", this.argments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("聊天室${this.id}${ this.argments["id"]}")),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                title: Text(
                    "聊天回话" + DateTime.now().microsecondsSinceEpoch.toString()));
          }),
      floatingActionButton: FloatingActionButton(
        child: Text("返回"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
