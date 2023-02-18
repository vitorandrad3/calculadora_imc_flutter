import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const Appbody());
}

class Appbody extends StatelessWidget {
  const Appbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
