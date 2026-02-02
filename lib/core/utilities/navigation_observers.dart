import 'package:flutter/material.dart';

class NavigationHistoryObserver extends NavigatorObserver {
  final List<Route<dynamic>> history = [];

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    history.add(route);
    print("pushed ${route}");
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    history.remove(route);
    print("popped ${route}");
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    history.remove(route);
    print("removed ${route}");
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (oldRoute != null) history.remove(oldRoute);
    if (newRoute != null) {
      history.add(newRoute);
      print("replaced ${newRoute}");
    }
  }
}
