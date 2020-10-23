import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xxf/chat/ChatRoomPage.dart';

final Map<String, WidgetBuilder> routes = {
  "/chatRoomPage": (BuildContext context, {argments}) => ChatRoomPage(argments: argments),
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
