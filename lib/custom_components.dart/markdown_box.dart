import 'dart:convert';
import 'dart:js_interop';

import 'package:sylane_website/component.dart';
import 'package:markdown/markdown.dart';
import 'package:http/http.dart' as http;
import 'package:web/web.dart';
import 'package:sylane_website/prism.dart' as prism;

class MarkdownBox extends StatelessComponent {
  final String path;
  final String? id;

  MarkdownBox({required this.path, this.id}) : super();

  @override
  void build() {
    element.appendChild(HTMLDivElement()..classList.add("def"));
    http.get(Uri.file(path)).then((response) {
      if (response.statusCode == 200) {
        element.classList.add("md");
        element.innerHTML = markdownToHtml(
          Utf8Decoder().convert(response.bodyBytes),
        ).toJS;
      }
      // element.appendChild(
      //   HTMLScriptElement()..innerText = "Prism.highlightAll()",
      // );

      prism.highlightAll();
    });
  }
}
