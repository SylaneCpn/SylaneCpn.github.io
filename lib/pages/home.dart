import 'package:sylane_website/component.dart';
import 'package:sylane_website/custom_components.dart/markdown_box.dart';
import 'package:sylane_website/router.dart';

class Home extends StatelessComponent{

  Home() : super();

  @override
  void build() {
    addChild(MarkdownBox(path:  ressource("assets/md/home_fr.md")));
  }

}