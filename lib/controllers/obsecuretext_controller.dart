import 'package:flutter/material.dart';

class ObscuringTextEditingController extends TextEditingController {
  @override
  TextSpan buildTextSpan({
    required BuildContext context,
      TextStyle? style,
      required bool withComposing
    }) {
    return TextSpan(
        text: '.' * value.text.length,
        style: style); // Consider using a more performant way to build string, such as StringBuffer
  }
}
