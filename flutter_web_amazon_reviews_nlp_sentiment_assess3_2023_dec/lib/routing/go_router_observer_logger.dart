import 'package:flutter/material.dart';

///
/// Used for logging routes [useful for debugging]
///
class GoRouterObserverLogger extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('Pushed route: ${route.settings.name}');
    printCurrentStack();
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('Popped route: ${route.settings.name}');
    printCurrentStack();
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('Removed route: ${route.settings.name}');
    printCurrentStack();
  }

  void printCurrentStack() {
    debugPrint('Current stack: ${navigator?.widget.pages.map((e) => e.name).toList()}');
  }
}
