import 'dart:js_interop';

import 'package:sylane_website/app.dart';
import 'package:sylane_website/component.dart';
import 'package:sylane_website/router.dart';
import 'package:web/web.dart';

class Navbar extends StateFullComponent<NavbarState> {

  static void _goHome() {
    App.appState.setHref("/");
  }
  Navbar() : super(state: NavbarState());
  @override
  void build() {
    element.classList.add("extended_nav");
    final navbar = HTMLElement.nav()
      ..classList.add("navbar")
      ..append(
        HTMLAnchorElement()
          ..onclick = _goHome.toJS
          ..style.cursor = "pointer"
          ..appendChild(
            HTMLImageElement()
              ..classList.add("logo")
              ..src = ressource("assets/img/pics/logo.png"),
          ),
      )
      ..appendChild(
        HTMLDivElement()
          ..classList.add("navbar_content")
          ..addComponent(Links()..element.classList.add("links"))
          ..appendChild(
            HTMLImageElement()
              ..classList.add("svg")
              ..src = ressource("assets/img/pics/hamburger.svg")
              ..onclick = state.toggle.toJS,
          ),
      );
    element.appendChild(navbar);

    if (state.extended) {
      final links = Links()..element.classList.add("extended");
      addChild(links);
    }
  }
}

class NavbarState extends ComponentState {
  bool extended = false;

  void toggle() {
    extended = !extended;
    notify();
  }
}

class Links extends StatelessComponent {
  Links() : super();
  @override
  void build() {

    for (final route in App.appState.router.routes) {
      element.appendChild(route.generateAnchorElement());
    }
    // element
    //   ..appendChild(
    //     HTMLAnchorElement()
    //       ..onclick = gotoHome.toJS
    //       ..innerText = "Accueil"
    //       ..style.cursor = "pointer",
    //   )
    //   ..appendChild(
    //     HTMLAnchorElement()
    //       ..onclick = gotoResume.toJS
    //       ..innerText = "CV"
    //       ..style.cursor = "pointer",
    //   )
    //   ..appendChild(
    //     HTMLAnchorElement()
    //       ..onclick = gotoSchool.toJS
    //       ..innerText = "Ecole"
    //       ..style.cursor = "pointer",
    //   )
    //   ..appendChild(
    //     HTMLAnchorElement()
    //       ..onclick = gotoProjects.toJS
    //       ..innerText = "Projets"
    //       ..style.cursor = "pointer",
    //   )
    //   ..appendChild(
    //     HTMLAnchorElement()
    //       ..onclick = gotoAbout.toJS
    //       ..innerText = "A propos"
    //       ..style.cursor = "pointer",
    //   )
    //   ..appendChild(
    //     HTMLAnchorElement()
    //       ..onclick = gotoBlog.toJS
    //       ..innerText = "Blog"
    //       ..style.cursor = "pointer",
    //   );
  }

  // void goto(String pathName) {
  //   App.appState.setHref(pathName);
  // }

  // void gotoBlog() {
  //   goto("/blog");
  // }

  // void gotoAbout() {
  //   goto("/a_propos");
  // }

  // void gotoProjects() {
  //   goto("/projets");
  // }

  // void gotoSchool() {
  //   goto("/ecole");
  // }

  // void gotoHome() {
  //   goto("/");
  // }

  // void gotoResume() {
  //   goto("/cv");
  // }
}
