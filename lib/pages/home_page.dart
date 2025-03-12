import 'package:flutter/material.dart';
import 'package:windflags/components/menu.dart';
import 'package:windflags/components/secao.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 14, 13, 13),
      appBar: AppBar(
        actions: const [Menu()],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Image.asset(
          "assets/images/logo.png",
          width: 200,
        ),
        titleSpacing: 20,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Secao(color: Color.fromRGBO(33, 150, 243, 1), height: 800),
            Secao(color: Color.fromARGB(255, 23, 77, 194), height: 800),
            Secao(color: Color.fromRGBO(48, 31, 128, 1), height: 800),
            Secao(color: Color.fromARGB(255, 32, 22, 122), height: 800),
            Secao(color: Color.fromRGBO(33, 150, 243, 1), height: 800),
            Secao(color: Color.fromARGB(255, 23, 77, 194), height: 800),
            Secao(color: Color.fromRGBO(48, 31, 128, 1), height: 800),
            Secao(color: Color.fromARGB(255, 32, 22, 122), height: 800),
          ],
        ),
      ),
    );
  }
}
