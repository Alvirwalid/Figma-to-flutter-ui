import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextWidget extends StatelessWidget {
  TextWidget(
      {super.key,
      required this.text,
      required this.color,
      required this.fs,
      this.fm = 'Inknut',
      this.isTitle = false});
  Color color;
  double fs;
  String fm;
  String text;
  bool isTitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: fs,
          fontFamily: fm,
          fontWeight: isTitle ? FontWeight.bold : FontWeight.normal),
    );
  }
}
