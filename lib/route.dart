import 'dart:js_interop';

import 'package:sylane_website/app.dart';
import 'package:sylane_website/component.dart';
import 'package:sylane_website/pages/about.dart';
import 'package:sylane_website/pages/blog.dart';
import 'package:sylane_website/pages/home.dart';
import 'package:sylane_website/pages/projects.dart';
import 'package:sylane_website/pages/resume.dart';
import 'package:sylane_website/pages/school.dart';
import 'package:web/web.dart';


abstract class Route {
  String get name;
  String get href;
  Component get component;


  void goToPage() {
    App.appState.setHref(href);
  }

  HTMLAnchorElement generateAnchorElement() => 
  HTMLAnchorElement()..onclick = goToPage.toJS
                      ..innerText = name
                      ..style.cursor = "pointer";
}

class HomeRoute extends Route {
  @override
  Component get component => Home();

  @override
  String get href => "/";

  @override
  String get name => "Acceuil";
  
}

class BlogRoute extends Route {
  @override
  Component get component => Blog();

  @override
  String get href => "/blog";

  @override
  String get name => "Blog";

}

class ResumeRoute extends Route {
  @override
  Component get component => Resume();

  @override
  String get href => "/cv";

  @override
  String get name => "CV";

}


class AboutRoute extends Route {
  @override
  Component get component => About();

  @override
  String get href => "/a_propos";

  @override
  String get name => "A propos";

}

class SchoolRoute extends Route {
  @override
  Component get component => School();

  @override
  String get href => "/ecole";

  @override
  String get name => "Ecole";

}

class ProjectsRoute extends Route {
  @override
  Component get component => Projects();

  @override
  String get href => "/projets";

  @override
  String get name => "Projets" ;

}