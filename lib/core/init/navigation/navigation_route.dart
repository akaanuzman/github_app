import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Scaffold;


class NavigationRoute {
  static Route<CupertinoPageRoute> generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments; //argumanlar

    switch (settings.name) {
      default:
        return CupertinoPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Not Found'))),
        );
    }
  }
}
