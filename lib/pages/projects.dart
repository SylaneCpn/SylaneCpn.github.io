import 'package:sylane_website/component.dart';
import 'package:sylane_website/custom_components.dart/accordion.dart';
import 'package:sylane_website/custom_components.dart/markdown_box.dart';
import 'package:sylane_website/router.dart';
import 'package:web/web.dart';

class Projects extends StatelessComponent{
  @override
  void build() {
    addChild(MarkdownBox(path: ressource("assets/md/projects_fr.md")));
    addChidren([
      Accordion(title: "Chess", child: MarkdownBox(path: ressource("assets/md/projects_fr/chess.md"))),
      Accordion(title: "Pense", child: MarkdownBox(path:  ressource("assets/md/projects_fr/pense.md"))),
      Accordion(title: "SCloud", child: MarkdownBox(path: ressource("assets/md/projects_fr/scloud.md"))),
      Accordion(title: "Pong.Js", child: MarkdownBox(path: ressource("assets/md/projects_fr/pong.md"))),
      Accordion(title: "Snake.Js", child: MarkdownBox(path: ressource("assets/md/projects_fr/snake.md"))),
      Accordion(title: "Prestation musicale lors du \"Dellec en caisse\"", child: MarkdownBox(path: ressource("assets/md/projects_fr/dellec.md"))),
      Accordion(title: "Championnat UNSS Planche à voile 2016", child: MarkdownBox(path: ressource("assets/md/projects_fr/unss.md"))),
      Accordion(title: "Les dons de la mer", child: MarkdownBox(path: ressource("assets/md/projects_fr/c_genial.md"))),
      Accordion(title: "Championnat de Guadeloupe de calcul mental niveau CE2", child: MarkdownBox(path: ressource("assets/md/projects_fr/maths.md"))),
    ]);
    element.appendChild(HTMLHeadingElement.h2()..innerText = "A venir...");
    addChild(Accordion(title: "PicMaker", child: MarkdownBox(path: ressource("assets/md/projects_fr/picmaker.md"))));
  }

}