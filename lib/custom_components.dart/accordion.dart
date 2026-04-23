import 'dart:js_interop';

import 'package:sylane_website/component.dart';
import 'package:web/web.dart';

class Accordion extends StateFullComponent<AccordionState> {
  final String title;
  final Component child;
  final HTMLDivElement contentDiv = .new();
  Accordion({required this.title, required this.child})
    : super(state: AccordionState());
  @override
  void build() {
    element
      ..classList.add("box")
      ..appendChild(
        HTMLHeadingElement.h3()
          ..classList.add("box_title")
          ..innerText = title
          ..onclick = state.toggle.toJS,
      );

    element.appendChild(
      contentDiv
        ..classList.add("box_content")
        ..addComponent(child),
    );
  }

  @override
  void rebuild() {
    if (state.opened) {
      contentDiv.style.maxHeight = "${contentDiv.scrollHeight}px";
    } else {
      contentDiv.style.maxHeight = "0";
    }
  }
}

class AccordionState extends ComponentState {
  bool opened = false;

  void toggle() {
    opened = !opened;
    notify();
  }
}
