import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Icon? icon;
  final void Function()? pressButton;
  final Color? colorButton;

  const Button({this.icon, this.pressButton, this.colorButton, super.key});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressButton,
      elevation: 6,
      fillColor: colorButton,
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(
        height: 30,
        width: 30,
      ),
      child: icon,
    );
  }
}
