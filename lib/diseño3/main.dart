import 'package:flutter/material.dart';
import 'package:flutter_application_3/dise%C3%B1o3/homePrincipal.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Aplicación para divisas",
        debugShowCheckedModeBanner: false,
        home: HomePrincipal());
  }
}
