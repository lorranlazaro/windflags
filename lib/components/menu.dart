import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  final ValueChanged<int> onMenuClick;

  const Menu({required this.onMenuClick, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () => onMenuClick(1),
            child: const Text(
              "Home",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          TextButton(
            onPressed: () => onMenuClick(2),
            child: const Text(
              "Serviços",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          TextButton(
            onPressed: () => onMenuClick(3),
            child: const Text(
              "Wind Banners",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          TextButton(
            onPressed: () => onMenuClick(4),
            child: const Text(
              "Bandeiras",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          TextButton(
            onPressed: () => onMenuClick(6),
            child: const Text(
              "Gráfica",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          TextButton(
            onPressed: () => onMenuClick(7),
            child: const Text(
              "Depoimentos",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
          TextButton(
            onPressed: () => onMenuClick(8),
            child: const Text(
              "Contato",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
