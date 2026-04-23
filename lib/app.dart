import 'dart:js_interop';

import 'package:sylane_website/component.dart';
import 'package:sylane_website/custom_components.dart/contacts_box.dart';
import 'package:sylane_website/custom_components.dart/navbar.dart';
import 'package:sylane_website/router.dart';


import 'package:web/web.dart' as web;

class App extends StateFullComponent<AppState> {
  static AppState appState = .new();

  App() : super(state: appState) {
    web.window.addEventListener("popstate", state._onPopState.toJS);
    web.window.addEventListener("DOMContentLoaded", pageOnDomLoaded.toJS);
  }
  @override
  void build() {
    addChild(Navbar());
    addChild(parseUrl());
    // element.append(web.HTMLParagraphElement()..innerText = appState.router.pathName);
    addChild(ContactsBox());
  }

  Component parseUrl() => state.router.getPage();


  void pageOnDomLoaded(web.Event _) {
    state.replaceRouter();
  }
}

// class AppState extends ComponentState {
//   static const String basePath = "";
//   String pathName = web.window.location.pathname;

//   void setHref(String newPathName) {
//     pathName = "$basePath$newPathName";
//     web.window.history.pushState(pathName.toJS, "", pathName);
//     notify();
//   }

//   void onPopState(web.PopStateEvent event) {
//     pathName = event.state?.toString() ?? "$basePath/";
//     notify();
//   }
// }


class AppState extends ComponentState {
  Router router = .new();

  void setHref(String newPathName) {
    router.goToRoute(newPathName);
    web.window.history.pushState(router.pathName.toJS, "", router.fullPath);
    notify();
  }

  void _onPopState(web.PopStateEvent event) {
    router.goToRoute(event.state?.toString() ?? "/");
    notify();
  }

  void replaceRouter() {
    router = .new();
    notify();
  }


}
