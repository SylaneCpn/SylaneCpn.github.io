import 'package:sylane_website/component.dart';
import 'package:sylane_website/custom_components.dart/accordion.dart';
import 'package:sylane_website/custom_components.dart/markdown_box.dart';
import 'package:sylane_website/router.dart';

class Blog extends StatelessComponent {
  Blog() : super();

  @override
  void build() {
    addChild(MarkdownBox(path: ressource("assets/md/blog_fr.md")));
    addChild(
      Accordion(
        title: "Compiler son projet C sans makefile",
        child: MarkdownBox(path: ressource("assets/md/blog_fr/simple_c.md")),
      ),
    );
  }
}
