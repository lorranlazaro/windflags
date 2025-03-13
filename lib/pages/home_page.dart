import 'package:flutter/material.dart';
import 'package:windflags/components/menu.dart';
import 'package:windflags/components/home.dart';
import 'package:windflags/components/bandeiras.dart';
import 'package:windflags/components/contato.dart';
import 'package:windflags/components/depoimentos.dart';
import 'package:windflags/components/grafica.dart';
import 'package:windflags/components/inflaveis.dart';
import 'package:windflags/components/services.dart';
import 'package:windflags/components/wind_banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scrollController = ScrollController();

  final keySecao1 = GlobalKey();
  final keySecao2 = GlobalKey();
  final keySecao3 = GlobalKey();
  final keySecao4 = GlobalKey();
  final keySecao5 = GlobalKey();
  final keySecao6 = GlobalKey();
  final keySecao7 = GlobalKey();
  final keySecao8 = GlobalKey();

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        onPressed: () {
          scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        child: const Icon(
          Icons.arrow_upward_sharp,
          color: Color.fromARGB(255, 104, 207, 255),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 13, 13),
      appBar: AppBar(
        actions: [Menu(onMenuClick: _onMenuclick)],
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: Image.asset(
          "assets/images/logo.png",
          width: 200,
        ),
        titleSpacing: 20,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            Home(
                key: keySecao1,
                color: const Color.fromRGBO(33, 150, 243, 1),
                height: 800),
            Services(
                key: keySecao2,
                color: const Color.fromARGB(255, 54, 194, 23),
                height: 800),
            WindBanner(
                key: keySecao3,
                color: const Color.fromRGBO(128, 31, 73, 1),
                height: 800),
            Bandeiras(
                key: keySecao4,
                color: const Color.fromARGB(255, 122, 22, 24),
                height: 800),
            Inflaveis(
                key: keySecao5,
                color: const Color.fromRGBO(167, 180, 21, 1),
                height: 800),
            Grafica(
                key: keySecao6,
                color: const Color.fromARGB(255, 233, 115, 13),
                height: 800),
            Depoimentos(
                key: keySecao7,
                color: const Color.fromARGB(255, 0, 0, 0),
                height: 800),
            Contato(
                key: keySecao8,
                color: const Color.fromARGB(255, 85, 84, 85),
                height: 800),
          ],
        ),
      ),
    );
  }

  void _onMenuclick(int value) {
    final RenderBox renderBox;

    switch (value) {
      case 1:
        renderBox = keySecao1.currentContext!.findRenderObject() as RenderBox;
        break;
      case 2:
        renderBox = keySecao2.currentContext!.findRenderObject() as RenderBox;
        break;
      case 3:
        renderBox = keySecao3.currentContext!.findRenderObject() as RenderBox;
        break;
      case 4:
        renderBox = keySecao4.currentContext!.findRenderObject() as RenderBox;
        break;
      case 5:
        renderBox = keySecao5.currentContext!.findRenderObject() as RenderBox;
        break;
      case 6:
        renderBox = keySecao6.currentContext!.findRenderObject() as RenderBox;
        break;
      case 7:
        renderBox = keySecao7.currentContext!.findRenderObject() as RenderBox;
        break;
      case 8:
        renderBox = keySecao8.currentContext!.findRenderObject() as RenderBox;
        break;
      default:
        throw Exception();
    }

    final offset = renderBox.localToGlobal(Offset.zero);

    scrollController.animateTo(
      offset.dy + scrollController.offset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
