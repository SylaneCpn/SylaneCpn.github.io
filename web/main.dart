import 'package:sylane_website/app.dart';
import 'package:sylane_website/component.dart';
import 'package:web/web.dart' as web;

void main() {
  final element = web.document.querySelector('#main') as web.HTMLDivElement;
  element.addComponent(App());
}
