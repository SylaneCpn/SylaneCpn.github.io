import 'package:sylane_website/component.dart';
import 'package:sylane_website/router.dart';
import 'package:web/web.dart';

class ContactsBox extends StatelessComponent {
  @override
  void build() {
    element.classList.add("contact_bar");
    element.appendChild(HTMLHeadingElement.h2()..innerText = "Me contacter");
    final content = HTMLDivElement()
      ..classList.add("contact_elements")
      ..addComponent(
        ContactItem(
          label: "Email",
          imagePath: ressource("assets/img/pics/mail.svg"),
          pathName: "sylane.campan@gmail.com",
          linkPath: "mailto:sylane.campan@gmail.com",
        ),
      )
      ..addComponent(
        ContactItem(
          label: "LinkedIn",
          imagePath: ressource("assets/img/pics/linked_in.svg"),
          pathName: "sylane-campan",
          linkPath: "https://linkedin.com/in/sylane-campan-6bb56a230",
        ),
      )
      ..addComponent(
        ContactItem(
          label: "Github",
          imagePath: ressource("assets/img/pics/github.svg"),
          pathName: "SylaneCpn",
          linkPath: "https://github.com/sylanecpn",
        ),
      );
    element.appendChild(content);
  }
}

class ContactItem extends StatelessComponent {
  final String label;
  final String imagePath;
  final String pathName;
  final String linkPath;

  ContactItem({
    required this.label,
    required this.imagePath,
    required this.pathName,
    required this.linkPath,
  }) : super();

  @override
  void build() {
    final header = HTMLDivElement();
    header.classList.add("header");
    header
      ..appendChild(HTMLParagraphElement()..innerText = label)
      ..appendChild(HTMLImageElement()..src = imagePath);

    element
      ..classList.add("c_item")
      ..appendChild(header)
      ..appendChild(
        HTMLAnchorElement()
          ..href = linkPath
          ..innerText = pathName,
      );
  }
}
