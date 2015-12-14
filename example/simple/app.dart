library app;

import 'dart:html';
import 'package:markdown/markdown.dart';

void main() {
  var input = querySelector('#input') as TextAreaElement;
  var output = querySelector('#output') as DivElement;

  querySelector('#evaluate').onClick.listen((event) {
    output.innerHtml = markdownToHtml(input.value);
  });
}
