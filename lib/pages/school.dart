import 'package:sylane_website/component.dart';
import 'package:sylane_website/custom_components.dart/accordion.dart';
import 'package:sylane_website/custom_components.dart/markdown_box.dart';
import 'package:sylane_website/router.dart';
import 'package:web/web.dart';

class School extends StatelessComponent {
  School() : super();
  @override
  void build() {
    addChild(MarkdownBox(path: ressource("assets/md/school_fr.md")));
    element.appendChild(HTMLHeadingElement.h2()..innerText = "Cursus Enib");
    addChidren([
      Accordion(
        title: "Projet OS",
        child: MarkdownBox(path: ressource("assets/md/school_fr/os.md")),
      ),
      Accordion(
        title: "Projet Robot",
        child: MarkdownBox(path: ressource("assets/md/school_fr/robot.md")),
      ),
      Accordion(
        title: "Reseau de capteurs",
        child: MarkdownBox(path: ressource("assets/md/school_fr/sensor.md")),
      ),
      Accordion(
        title:
            "Asservissement d'une résistance chauffante controllée en puissance",
        child: MarkdownBox(path: ressource("assets/md/school_fr/IPS.md")),
      ),
      Accordion(
        title: "Traitement d'images",
        child: MarkdownBox(path: ressource("assets/md/school_fr/img.md")),
      ),
      Accordion(
        title: "Recycl'ENIB",
        child: MarkdownBox(path: ressource("assets/md/school_fr/cpo.md")),
      ),
      Accordion(
        title: "Monster Runner",
        child: MarkdownBox(path: ressource("assets/md/school_fr/IPI.md")),
      ),
    ]);
    element.appendChild(
      HTMLHeadingElement.h2()..innerText = "Cursus Université de Sherbrooke",
    );
    addChidren([
      Accordion(
        title: "Acoustique fondamentale",
        child: MarkdownBox(path: ressource("assets/md/canada/acoustic.md")),
      ),
      Accordion(
        title: "Méthode des éléments finis",
        child: MarkdownBox(path: ressource("assets/md/canada/finite_elements.md")),
      ),
      Accordion(
        title: "Contrôle actif de bruits et vibrations",
        child: MarkdownBox(path:  ressource("assets/md/canada/noise_waves.md")),
      ),
      Accordion(
        title: "Turbulences : Modélisation et expérimentations",
        child: MarkdownBox(path: ressource("assets/md/canada/turbulences.md")),
      ),
    ]);

    element.appendChild(HTMLHeadingElement.h2()..innerText = "Stages");
    addChidren([
      Accordion(
        title: "ORANGE 2025",
        child: MarkdownBox(path: ressource("assets/md/school_fr/O2025.md")),
      ),
      Accordion(
        title: "BLUE SOLUTIONS 2023",
        child: MarkdownBox(path: ressource("assets/md/school_fr/BS2023.md")),
      ),
      Accordion(
        title: "ENAG 2022",
        child: MarkdownBox(path: ressource("assets/md/school_fr/ENAG2022.md")),
      ),
    ]);

    // element.appendChild(HTMLHeadingElement.h2()..innerText = "Autres");
  }
}
