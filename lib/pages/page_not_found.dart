import 'package:sylane_website/component.dart';
import 'package:sylane_website/router.dart';
import 'package:web/web.dart';

class PageNotFound extends StatelessComponent {
  final String uri;

  PageNotFound({required this.uri}) : super();

  @override
  void build() {
    element
      ..appendChild(HTMLHeadingElement.h1()..innerText = "Page Introuvable")
      ..appendChild(
        HTMLDivElement()
          ..classList.add("centered")
          ..appendChild(
            HTMLHeadingElement.h2()
              ..innerText = "La page \"$uri\" n'existe pas !",
          ),
      )
      ..appendChild(
        HTMLDivElement()
          ..classList.add("centered")
          ..appendChild(
            HTMLAnchorElement()
              ..href = "$basePath/"
              ..style.marginTop = "200px"
              ..style.marginBottom = "200px"
              ..innerText = "Revenez à l'accueil."
          ),
      );
  }
}
