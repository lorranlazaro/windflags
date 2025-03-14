import 'package:flutter/material.dart';
import 'package:windflags/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wind Flags",
      theme:
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)),
      home: const HomePage(),
    );
  }
}
