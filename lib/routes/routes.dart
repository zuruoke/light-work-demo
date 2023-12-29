import 'package:flutter/material.dart';

class Routes {
  final dynamic args;
  final String pathName;

  Routes({
    this.args,
    required this.pathName,
  });

  getRouteWidget() {
    final Map<String, Widget> routes = {};

    return routes[pathName] ?? const ();
  }
}
