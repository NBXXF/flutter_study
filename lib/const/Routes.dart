import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xxf/chat/ChatRoomPage.dart';
import 'package:flutter_xxf/chat/ChatRoomDetails.dart';
import 'package:flutter_xxf/study_TabBar.dart';

final Map<String, WidgetBuilder> routes = {
  "/chatRoomPage": (BuildContext context, {argments}) => ChatRoomPage(argments: argments),
  "/chatRoomDetails": (BuildContext context, {argments}) => ChatRoomDetails(argments: argments),
  "/tabBar": (BuildContext context, {argments}) => TabBarPage(argments: argments),
};

/**
 * =固定生成写法
 */
PageRoute myOnGenerateRoutes(RouteSettings settings) {
  var name = settings.name;
  Function routeBuilder = routes[name];
  if (routeBuilder != null) {
    return MaterialPageRoute(builder: (BuildContext context) {
      return routeBuilder(context, argments: settings.arguments);
    });
  } else {
    return MaterialPageRoute(builder: (BuildContext context) {
      return routeBuilder(context);
    });
  }
}
