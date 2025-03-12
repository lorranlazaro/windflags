import 'package:flutter/material.dart';

class Secao extends StatelessWidget {
  const Secao({super.key, required this.color, required this.height});

  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: height,
    );
  }
}
