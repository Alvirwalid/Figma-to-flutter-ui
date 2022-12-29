import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test/widget/textwidget.dart';

class ordersPage extends StatelessWidget {
  const ordersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextWidget(text: 'ordersPage', color: Colors.black, fs: 24),
      ),
    );
  }
}
