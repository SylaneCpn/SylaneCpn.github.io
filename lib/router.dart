import 'dart:collection';

import 'package:sylane_website/component.dart';
import 'package:sylane_website/pages/page_not_found.dart';
import 'package:sylane_website/route.dart';
import 'package:web/web.dart' as web;


// if not empty, `basePath` must strat with "/"
const basePath = "/";

String ressource(String ressource) {
  if (basePath.isEmpty || basePath == "/") {
    return ressource;
  }
  else {
    return "${basePath.substring(1)}/$ressource";
  }

}

class Router {
  // static String computeBasePath() {
  //   final firstPath = web.window.location.pathname;
  //   if (firstPath.isEmpty || firstPath == "/") return "";

  //   final [_, basePath, ..._] = firstPath.split("/");
  //   return "/$basePath";
  // }

 

  static String firstPath() {
    final initPath = web.window.location.pathname;
    if (basePath.isEmpty || basePath == "/") return initPath;
    final basePathStartIndex = initPath.indexOf(basePath);
    if (basePathStartIndex != 0) {
      return initPath;
    }

    return initPath.substring(basePath.length);


  }

  String _pathName = firstPath();

  String get pathName => _pathName;

  String get fullPath {
    if (basePath.isEmpty || basePath == "/") return pathName;
    return "$basePath$_pathName";
  }


  final _routes = [
    HomeRoute(),
    ResumeRoute(),
    SchoolRoute(),
    ProjectsRoute(),
    AboutRoute(),
    BlogRoute(),
  ];

  UnmodifiableListView<Route> get routes => .new(_routes);

  Component getPage() =>
      _routes.where((r) => r.href == _pathName).firstOrNull?.component ??
      PageNotFound(uri: pathName);

  void goToRoute(String href) {
    _pathName = href;
  }
}
