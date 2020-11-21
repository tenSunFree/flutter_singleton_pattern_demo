import 'package:flutter/material.dart';
import 'package:flutter_singleton_pattern_demo/mine/mine_screen.dart';

class AppRouter {
  static const String mine = '/mine';

  // ignore: missing_return
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mine:
        return MaterialPageRoute(builder: (_) => MineScreen());
    }
  }
}
