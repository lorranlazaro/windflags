import 'package:flutter/material.dart';

class Bandeiras extends StatelessWidget {
  const Bandeiras({super.key, required this.color, required this.height});

  final Color color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,  
      color: color,
      height: height,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("BANDEIRAS"),
          TextButton(
            onPressed: null,
            child: Text("Clique"),
          ),
        ],
      ),
    );
  }
}
