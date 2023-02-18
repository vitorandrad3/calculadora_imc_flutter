import 'package:flutter/material.dart';

class Cardwidget extends StatelessWidget {
  final double width;
  final double heigth;
  final Color color;
  final Widget? childcard;
  final void Function()? pressButton;

  const Cardwidget(
    this.width,
    this.heigth,
    this.color, {
    this.pressButton,
    super.key,
    this.childcard,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressButton,
      child: Container(
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * heigth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: color),
        child: childcard,
      ),
    );
  }
}
