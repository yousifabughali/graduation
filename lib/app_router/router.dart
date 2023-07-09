import 'package:flutter/material.dart';

class AppRouter {
  static GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  static Future<String?> NavigateToWidget(Widget widget) async {
    String? x = await Navigator.of(navKey.currentContext!)
        .push(MaterialPageRoute(builder: (context) {
      return widget;
    }));
    return x;
  }

  static NavigateWithReplacemtnToWidget(Widget widget) {
    BuildContext context = navKey.currentContext!;
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return widget;
    }));
  }

  static popRouter() {
    Navigator.of(navKey.currentContext!).pop();
  }
}
