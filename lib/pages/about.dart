import 'package:sylane_website/component.dart';
import 'package:sylane_website/custom_components.dart/markdown_box.dart';
import 'package:sylane_website/router.dart';

class About extends StatelessComponent{

  About() : super();
  @override
  void build() {
    addChild(MarkdownBox(path: ressource("assets/md/about_fr.md")));
  }
}