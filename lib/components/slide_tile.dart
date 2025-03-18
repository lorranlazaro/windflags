import 'package:flutter/material.dart';

class SlideTile extends StatelessWidget {
  const SlideTile({required this.image, super.key});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
